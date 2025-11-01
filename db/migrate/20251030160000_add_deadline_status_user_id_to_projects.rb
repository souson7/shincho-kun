class AddDeadlineStatusUserIdToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :deadline, :date
    add_column :projects, :status, :string
    add_column :projects, :user_id, :integer
    add_index :projects, :user_id
  end
end


