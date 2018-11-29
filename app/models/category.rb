class Category < ApplicationRecord
  has_many :tours, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.size.text_2000}
  validates :parent_id, presence: true, numericality: true
end
