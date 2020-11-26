class AddTimestampstoConversation < ActiveRecord::Migration[6.0]
  def change
    add_column :conversations, :timestamps, :datetime
  end
end
