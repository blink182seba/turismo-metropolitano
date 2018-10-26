class TripActivity < ApplicationRecord
  belongs_to :trip
  belongs_to :activity
  belongs_to :reservation, optional: true
end
