class Trip < ApplicationRecord
  has_many :trip_activities
  has_many :activities, :through => :trip_activities
  belongs_to :user
end
