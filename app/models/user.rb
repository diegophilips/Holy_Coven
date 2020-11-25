class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :userservices, dependent: :destroy
  has_many :services, through: :userservices

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
