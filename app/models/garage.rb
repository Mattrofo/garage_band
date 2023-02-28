class Garage < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :price, :address, presence: true
end
