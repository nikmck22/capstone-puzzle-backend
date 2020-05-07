class User < ApplicationRecord
  has_many :orders
  has_many :puzzle_ratings
  has_many :puzzles, through: :puzzle_ratings
  has_many :contacts

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
