class RemoveTheLastSeenTasksAsField < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :last_seen_tasks_at
  end
end
