class CreateUsersAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :text, null: false 
    add_column :users, :created_at, :datetime, null: false
    add_column :users, :updated_at, :datetime, null: false
    add_index :users, :email, unique: true
  end
end
