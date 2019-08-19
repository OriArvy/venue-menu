class VenueReview < ApplicationRecord
  belongs_to :booking
  validates :rating, :description, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
