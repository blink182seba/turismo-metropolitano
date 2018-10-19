class Reserva < ApplicationRecord
  belongs_to :user
  belong_to :trip_activity
end
