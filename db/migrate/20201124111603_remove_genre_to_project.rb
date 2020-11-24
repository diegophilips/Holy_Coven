class RemoveGenreToProject < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :genre
  end
end
