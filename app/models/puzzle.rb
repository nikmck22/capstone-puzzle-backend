class Puzzle < ApplicationRecord
  has_many :orders
  has_many :puzzle_ratings
end
