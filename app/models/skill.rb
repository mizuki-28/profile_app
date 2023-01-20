class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :levels
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :level, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
end
