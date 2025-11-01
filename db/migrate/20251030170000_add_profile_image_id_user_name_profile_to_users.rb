class AddProfileImageIdUserNameProfileToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :profile_image_id, :string
    add_column :users, :user_name, :string
    add_column :users, :profile, :text
    add_index :users, :user_name, unique: true
  end
end


