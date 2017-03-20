class S3Controller < ApplicationController
  before_action :authenticate_user!

  require 'base64'
  require 'hmac-sha1'

  def sign
    if params["to_sign"].split("\n").last.match(/^\/#{ENV['DIRECT_UPLOAD_S3_BUCKET']}\/#{current_user.id}\//)
      encoded = sign_data(params["to_sign"])

      render plain: encoded, status: 200
    else
      head :bad_request
    end
  end

  protected

  def sign_data(details_to_sign)
    hmac = HMAC::SHA1.new(ENV['DIRECT_UPLOAD_AWS_SECRET_ACCESS_KEY'])
    hmac.update(details_to_sign)

    Base64.encode64("#{hmac.digest}").gsub("\n",'')
  end
end
