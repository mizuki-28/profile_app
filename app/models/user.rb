class User < ApplicationRecord
  has_secure_password
  has_many :skills, dependent: :destroy
  has_one_attached :avatar
end
