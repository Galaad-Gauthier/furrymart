module Illustrable

  extend ActiveSupport::Concern

  included do

    def illustration_for(user, format = :standard)
      if banner.present?
        if banner.is_adult_content && (!user || user.show_adult_content == false)
          ActionController::Base.helpers.image_url "nsfw.png"
        else
          banner.file_url(format)
        end
      else
        ActionController::Base.helpers.image_url "gplaypattern.png"
      end
    end

  end

end
