class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :venue_reviews
  validates :price, :check_in, :check_out, presence: true
end
