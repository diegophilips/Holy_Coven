class Review < ApplicationRecord
  has_one :reviewer
  belongs_to :user
  validates :content, presence: true
end
