class Category < ApplicationRecord
  has_many :tours
  acts_as_nested_set

  validates :name, presence: true, length: {maximum: Settings.size.text_2000}
end
