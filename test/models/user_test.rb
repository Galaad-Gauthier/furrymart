# == Schema Information
#
# Table name: users
#
#  artist_rating             :float            default(0.0)
#  commissioner_rating       :float            default(0.0)
#  confirmation_sent_at      :datetime
#  confirmation_token        :string
#  confirmed_at              :datetime
#  created_at                :datetime         not null
#  current_sign_in_at        :datetime
#  current_sign_in_ip        :inet
#  email                     :string           default(""), not null
#  encrypted_password        :string           default(""), not null
#  id                        :integer          not null, primary key
#  is_deleted                :boolean          default(FALSE)
#  language                  :string
#  last_sign_in_at           :datetime
#  last_sign_in_ip           :inet
#  name                      :string
#  notifications_permissions :hstore           default({})
#  remember_created_at       :datetime
#  reset_password_sent_at    :datetime
#  reset_password_token      :string
#  show_adult_content        :boolean
#  sign_in_count             :integer          default(0), not null
#  slug                      :string
#  unconfirmed_email         :string
#  updated_at                :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
