class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :content, presence: true, length: {maximum: Settings.size.text_2000}
  validates :parent_id, presence: true, numericality: true
end
