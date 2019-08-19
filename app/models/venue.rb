class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :photo, :price, :address, :description, presence: true
  validates :name, :address, uniqueness: true
end
