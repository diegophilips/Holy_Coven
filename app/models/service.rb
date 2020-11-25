class Service < ApplicationRecord
  validates :type_of_service, presence: true
  validates :description, presence: true

  def name
    return type_of_service
  end
end
