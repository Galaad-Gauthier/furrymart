# == Schema Information
#
# Table name: pictures
#
#  created_at       :datetime         not null
#  description      :string
#  file             :string
#  gravity_x        :integer
#  gravity_y        :integer
#  id               :integer          not null, primary key
#  is_adult_content :boolean          default(FALSE)
#  is_deleted       :boolean          default(FALSE)
#  updated_at       :datetime         not null
#  user_id          :integer
#

require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
