# == Schema Information
#
# Table name: reports
#
#  body        :text
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  reporter_id :integer
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Report < ApplicationRecord

  ### Model Config ###

  ### Modules ###

  ### Constants ###

  ### Associations ###

    belongs_to :user
    belongs_to :reporter, class_name: "User"

  ### Macros ###

  ### Scopes ###

  ### Validations ###

    validates :body, presence: true, length: { maximum: 50000 }
    validates :user, presence: true
    validates :reporter, presence: true

  ### Callbacks ###

  ### State machines ###

  ### Class methods ###

  ### Instance Methods ###

end
