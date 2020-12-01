class AddTimestampsToConversations < ActiveRecord::Migration[6.0]
  def change
    remove_column :conversations, :timestamps, :datetime
    add_timestamps :conversations, default: Time.zone.now
  end
end
