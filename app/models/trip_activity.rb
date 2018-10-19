class TripActivity < ApplicationRecord
  belongs_to :trip
  belongs_to :activity
  has_many :reserva
end
