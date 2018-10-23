class Trip < ApplicationRecord
  has_many :trip_activities, dependent: :destroy
  has_many :activities, :through => :trip_activities, dependent: :destroy
  belongs_to :user
end
