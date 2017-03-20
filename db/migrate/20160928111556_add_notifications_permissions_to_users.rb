class AddNotificationsPermissionsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :notifications_permissions, :hstore, default: {}
  end
end
