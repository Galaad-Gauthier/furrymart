# == Schema Information
#
# Table name: follows
#
#  blocked         :boolean          default(FALSE), not null
#  created_at      :datetime
#  followable_id   :integer          not null
#  followable_type :string           not null
#  follower_id     :integer          not null
#  follower_type   :string           not null
#  id              :integer          not null, primary key
#  updated_at      :datetime
#

class Follow < ActiveRecord::Base

### Model Config ###

### Modules ###

  extend ActsAsFollower::FollowerLib
  extend ActsAsFollower::FollowScopes

### Constants ###

### Associations ###

  # NOTE: Follows belong to the "followable" and "follower" interface
  belongs_to :followable, :polymorphic => true
  belongs_to :follower,   :polymorphic => true

### Macros ###

### Scopes ###

### Validations ###

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
