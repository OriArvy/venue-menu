class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :venue_reviews, dependent: :destroy
  validates :price, :check_in, :check_out, presence: true
end
