class Booking < ApplicationRecord
  belongs_to :user, :class_name => "User"
  belongs_to :pro, :class_name => "User"
end
