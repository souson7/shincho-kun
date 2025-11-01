class CreateAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end

    add_index :assignments, [:user_id, :project_id], unique: true
  end
end


