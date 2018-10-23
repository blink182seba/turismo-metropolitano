class Reservation < ApplicationRecord
  has_many :trip_activities, dependent: :destroy
  has_many :trips, :through => :trip_activities, dependent: :destroy
  belongs_to :user
end
