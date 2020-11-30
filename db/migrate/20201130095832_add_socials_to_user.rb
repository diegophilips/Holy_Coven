class AddSocialsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :spotify_artist_link, :string
    add_column :users, :instagram_link, :string
    add_column :users, :facebook_link, :string
  end
end
