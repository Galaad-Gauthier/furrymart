class Uploader
  def self.put(id, file)
    return file if Rails.env.test?

    connection = Fog::Storage.new({
      :provider                 => 'AWS',
      :aws_access_key_id        => ENV["DIRECT_UPLOAD_AWS_ACCESS_KEY_ID"],
      :aws_secret_access_key    => ENV["DIRECT_UPLOAD_AWS_SECRET_ACCESS_KEY"],
      :region                   => ENV["DIRECT_UPLOAD_AWS_REGION"]
    })
    bucket = connection.directories.get(ENV["DIRECT_UPLOAD_S3_BUCKET"])

    public_url = open(file) do |opened_file|
      key = "#{id}/#{SecureRandom.uuid}-#{File.basename(file)}"

      bucket.files.create({
        key: key,
        body: opened_file,
        public: true
      })
    end.public_url

    "#{ENV['DIRECT_UPLOAD_S3_URL']}/#{ENV['DIRECT_UPLOAD_S3_BUCKET']}#{URI.parse(public_url).path}"
  end
end
