class AddGenreToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :genre, :string
  end
end
