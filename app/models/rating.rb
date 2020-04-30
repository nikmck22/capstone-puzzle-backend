class Rating < ApplicationRecord
  has_many :puzzle_ratings
  has_many :puzzles, through: :puzzle_ratings
  has_many :users, through: :puzzle_ratings
end
