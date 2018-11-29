class Category < ApplicationRecord
  has_many :tours, dependent: :destroy
  has_many :subcategories, class_name: Category.name,
    foreign_key: :parent_id, dependent: :destroy
  has_one :parent, class_name: Category.name,
    primary_key: :parent_id, foreign_key: :id

  validates :name, presence: true, length: {maximum: Settings.size.text_2000}
  validates :parent_id, presence: true, numericality: true
end
