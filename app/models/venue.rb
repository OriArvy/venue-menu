class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :price, :address, :description, presence: true
  validates :name, :address, uniqueness: true
  mount_uploader :photo, EventUploader
  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true }
    }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
