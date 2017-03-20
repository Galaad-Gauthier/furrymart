class FuraffinityPicturesImporterJob < ApplicationJob
  include ERB::Util

  queue_as :default

  FURAFFINITY_HOST = "http://furaffinity.net"
  MAX_PAGES = 50

  def perform(user)
    return unless configured?

    NotificationChannel.push(user, I18n.t("importers.furaffinity.start"))

    pictures(user).each do |picture|
      image_body = open(Pathname.new(FURAFFINITY_HOST).join(picture[:image_link]).to_s, "Cookie" => cookie).read
      image_document = Nokogiri::HTML(image_body)

      image_link = "http:" + image_document.css("#submissionImg").first["src"]

      extension = File.extname(image_link)
      file_name = "#{File.basename(image_link).parameterize}#{extension}"
      s3_file_url = "#{ENV["DIRECT_UPLOAD_S3_URL"]}/#{bucket.key}/#{user.id}/#{file_name}"
      if user.assets.exists?(s3_file_url: s3_file_url)
        NotificationChannel.push(user, I18n.t("importers.furaffinity.skip", { description: h(picture[:description]) }))
        sleep 0.5
        next
      end

      NotificationChannel.push(user, I18n.t("importers.furaffinity.picture", { description: h(picture[:description]) }))

      open(URI.encode(image_link)) do |file|
        s3_file = bucket.files.create({
          key: "#{user.id}/#{file_name}",
          body: file,
          public: true
        })
        asset = user.assets.create({
          s3_file_url: s3_file_url,
          description: picture[:description],
          is_adult_content: picture[:is_adult_content]
        })
        ImporterChannel.push(asset)
      end
    end

    NotificationChannel.push(user, I18n.t("importers.furaffinity.end"))
  end

  private

  def pictures(user)
    pictures = []
    MAX_PAGES.times do |page|
      NotificationChannel.push(user, I18n.t("importers.furaffinity.page", { number: page + 1 }))

      base_url = Pathname.new(FURAFFINITY_HOST).join("gallery").join(user.profile.furaffinity).join((page + 1).to_s)

      body = open(base_url.to_s, "Cookie" => cookie).read
      document = Nokogiri::HTML(body)

      figures = document.css("figure")
      break if figures.empty?
      figures.each do |figure|
        picture = {}
        picture[:image_link] = figure.css("a").first["href"][1..-1]
        picture[:description] = figure.css("figcaption p:first").text
        picture[:is_adult_content] = !figure["class"].match("r-general")
        pictures << picture
      end
    end

    pictures.reverse
  end

  def configured?
    ENV["FURAFFINITY_COOKIE_A"].present? && ENV["FURAFFINITY_COOKIE_B"].present?
  end

  def cookie
    @cookie ||= {
      "a" => ENV["FURAFFINITY_COOKIE_A"],
      "b" => ENV["FURAFFINITY_COOKIE_B"]
    }.map do |key, value|
      "#{key}=#{value}"
    end.join(";")
  end

  def bucket
    @bucket ||= connection.directories.new(key: ENV["DIRECT_UPLOAD_S3_BUCKET"])
  end

  def connection
    @connection ||= Fog::Storage.new({
      :provider                 => 'AWS',
      :aws_access_key_id        => ENV["DIRECT_UPLOAD_AWS_ACCESS_KEY_ID"],
      :aws_secret_access_key    => ENV["DIRECT_UPLOAD_AWS_SECRET_ACCESS_KEY"],
      :region                   => "us-east-1"
    })
  end
end
