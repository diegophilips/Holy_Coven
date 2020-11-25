class RenameType < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :type, :type_of_service
  end
end
