class Booking < ApplicationRecord
  attr_reader :date
  belongs_to :mansion
  belongs_to :user
  has_many :reviews
  validate :end_date_after_start_date?
  def end_date_after_start_date?
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end
end
