class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :levels, dependent: :destroy
end
