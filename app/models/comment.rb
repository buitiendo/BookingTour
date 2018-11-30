class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review
  acts_as_nested_set

  validates :content, presence: true, length: {maximum: Settings.size.text_2000}
end
