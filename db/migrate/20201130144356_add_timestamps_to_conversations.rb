class AddTimestampsToConversations < ActiveRecord::Migration[6.0]
  def change
    add_column :conversations, :created_at, :datetime, null: false
    add_column :conversations, :updated_at, :datetime, null: false
    remove_column :conversations, :timestamps, :datetime
  end
end
