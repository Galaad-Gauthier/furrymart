module ApplicationHelper
  def error_messages_for(*objects)
    options = objects.extract_options!
    options[:header_message] ||= t(:"errors.template.header", model: t(:"activerecord.models.#{objects.compact.first.class.name.downcase}"), count: objects.compact.first.errors.messages.size)
    options[:message] ||= t(:"errors.template.body")
    messages = objects.compact.map { |o| o.errors.full_messages }.flatten
    unless messages.empty?
      content_tag(:div, id: "error_explanation") do
        list_items = messages.map { |msg| content_tag(:li, msg) }
        content_tag(:h2, options[:header_message]) + content_tag(:p, options[:message]) + content_tag(:ul, list_items.join.html_safe)
      end
    end
  end

  def format_text(text)
    formatted_text = simple_format(auto_reference(h(text)))
    linked_text = auto_link(formatted_text, :html => { :target => '_blank', :rel => 'noopener', class: 'ellipsis' }).gsub("\n\n", '<br />').gsub("<p></p>", '').html_safe
    Twemoji.parse(linked_text, file_ext: "png").html_safe
  end

  def auto_reference(text)
    match_data = text.scan(/(?<=\s|^)@[\w|\-|\_]+(?=\s|\z)/)

    if match_data.present?
      match_data.each do |data|
        user_slug = data.sub('@', '')
        link_tag = content_tag("a", data, href: Rails.application.routes.url_helpers.profile_url(user_id: user_slug, host: ENV['DOMAIN']))
        text.gsub!(data, link_tag)
      end
    end

    text
  end

  def render_markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, highlight: true)
    markdown.render(text)
  end

  def show_adult_content?
    @show_adult_content ||= (user_signed_in? ? current_user.show_adult_content : false)
  end

  def last_proposals
    Proposal.includes(:artist).order(created_at: :desc).where(visible: true).limit(4)
  end

  def has_site?(user)
    user.profile.sites.any? { |_, url| url.present? }
  end

  def quotations_as_commissioner
    current_user.quotations_as_commissioner
  end

  def quotations_as_artist
    current_user.quotations_as_artist
  end

  def notifications
    @notifications ||= pundit_policy_scope(PublicActivity::Activity)
  end

  def unread_notifications
    notifications.unread_by(current_user)
  end

  def my_messages
    pundit_policy_scope(Message)
  end

  def unread_messages
    my_messages.where(recipient: current_user, read: false)
  end

  def is_on_profile?
    is_active_link?(profile_path(user_id: current_user.slug)) ||
    is_active_link?(profile_path(user_id: current_user.slug)) ||
    is_active_link?(user_questions_path(user_id: current_user.slug))
  end

  def image_mimes
    "image/gif,image/jpeg,image/webp,image/png"
  end

  def music_mimes
    "audio/mpeg3,audio/x-mpeg-3,video/mpeg,video/x-mpeg,.mp3"
  end

  def wishes_by_proposal_id
    @wishes_by_proposal_id ||= current_user.wishes.inject({}) do |wishes_by_proposal_id, wish|
      wishes_by_proposal_id[wish.proposal_id] = wish
      wishes_by_proposal_id
    end
  end

  def wish_for(proposal)
    return nil unless current_user.present?

    wishes_by_proposal_id[proposal.id]
  end

  def user_class(user)
    if user.admin.present?
      return "admin"
    end

    if (user.commissioner_rating > 1 || user.artist_rating > 1)
      return "trusted"
    end

    return "new"
  end

  def is_image_url?(url)
    url_has_extension?(url, ["jpg", "jpeg", "gif", "png", "bmp", "svg"])
  end

  def is_document_url?(url)
    url_has_extension?(url, ["pdf"])
  end

  def is_regular_url?(url)
    !is_image_url?(url) && !is_document_url?(url)
  end

  def url_has_extension?(url, extensions)
    extname = File.extname(url).downcase
    extensions.any? { |extension| extname.match(/^\.#{extension}/) }
  end

  def has_twitter_signin?
    ENV["TWITTER_LOGIN_API_KEY"].present?
  end
end
