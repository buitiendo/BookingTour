class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  enum status: %i(waiting accepted deny)

  validates :status, presence: true
  validates :number_people, presence: true, numericality: true
end
