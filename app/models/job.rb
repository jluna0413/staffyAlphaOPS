class Job < ApplicationRecord
  belongs_to :client
  has_many :bookings
  has_many :talents, :through => :bookings
end
