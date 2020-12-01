class AddReviewer < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :reviewer, references: :users
  end
end
