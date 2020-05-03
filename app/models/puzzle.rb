class Puzzle < ApplicationRecord
  has_many :orders
  has_many :puzzle_ratings
  has_many :ratings, through: :puzzle_ratings
end
