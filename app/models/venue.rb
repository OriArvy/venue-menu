class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :price, :address, :description, presence: true
  validates :name, :address, uniqueness: true
  mount_uploader :photo, EventUploader
end
