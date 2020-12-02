class AddTwitterToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :twitter_link, :string
  end
end
