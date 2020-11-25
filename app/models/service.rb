class Service < ApplicationRecord
  has_many :userservices
  has_many :users, through: :userservices
  validates :type_of_service, presence: true
  validates :description, presence: true

  def name
    return type_of_service
  end
end
