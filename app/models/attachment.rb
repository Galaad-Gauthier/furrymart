class Attachment < ApplicationRecord

  include Picturable
  picture_fields({ image: [:file_url, :default_picture, :file_name] })

  belongs_to :quotation_comment, inverse_of: :attachments
  belongs_to :subject, polymorphic: true

  validates :file_url, presence: true
  validates_presence_of :quotation_comment

  def default_picture
    ActionController::Base.helpers.image_url("gplaypattern.png")
  end

  def file_name
    [quotation_comment.artist.name, quotation_comment.commissioner.name, id]
  end

end
