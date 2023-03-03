class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :garages, dependent: :destroy
    has_many :bookings
    has_many :bookings_as_owner, through: :garages, source: :bookings
    validates :password, :email, presence: true

end
