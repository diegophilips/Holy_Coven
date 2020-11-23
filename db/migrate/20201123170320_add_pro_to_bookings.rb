class AddProToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :pro, references: :users, index: true
  end
end
