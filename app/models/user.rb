class User < ApplicationRecord
  validates :name, :email, :address, :description, presence: true
  validates_format_of :email, with: Devise::email_regexp
  has_many :venues
  has_many :bookings
end
