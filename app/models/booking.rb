class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour

  validates :status, presence: true, numericality: true
  validates :number_people, presence: true, numericality: true
end
