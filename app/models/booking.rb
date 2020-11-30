class Booking < ApplicationRecord
  belongs_to :mansion
  belongs_to :user
end
