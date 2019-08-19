class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :email, :address, :description, presence: true
  validates_format_of :email, with: Devise::email_regexp
  has_many :venues
  has_many :bookings
end
