ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'simplecov'

SimpleCov.start 'rails' do
  add_filter "/admin/"
  add_filter "/config/"
  add_filter "/test/"
  add_filter "/lib/active_admin/base_controller"
  add_filter "/app/models/ahoy/event"
  add_filter "/app/controllers/s3_controller"
  add_filter "/app/controllers/users/omniauth_callbacks_controller"
  add_filter "/app/jobs"
  add_filter "/app/channels"
  add_filter "/app/lib/uploader"
  add_filter "/mailers"

  add_filter do |source_file|
    source_file.lines.count < 3
  end
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def after_teardown
    super
  end

  def refresh_proposals
    Proposal.__elasticsearch__.index_name = 'proposals_test'
    Proposal.__elasticsearch__.create_index! force: true
    Proposal.__elasticsearch__.import
    Proposal.__elasticsearch__.refresh_index!
  end

end
