class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :venue_reviews, through: :bookings
  validates :name, :price, :address, :description, presence: true
  validates :name, :address, uniqueness: true
  mount_uploader :photo, EventUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def result
    sum = []
    @venue = Venue.find(id)
    @venue.venue_reviews.each do |venue|
      sum << venue.rating
    end
    result = sum.sum.to_f / @venue.venue_reviews.count
    result.ceil(2)
  end
end
