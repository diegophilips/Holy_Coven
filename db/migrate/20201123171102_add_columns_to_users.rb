class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :artist_name, :string
    add_column :users, :bio, :text
    add_column :users, :genre, :string
    add_column :users, :pro, :boolean, default: false
  end
end
