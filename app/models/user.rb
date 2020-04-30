class User < ApplicationRecord
  has_many :puzzle_ratings
  has_many :ratings, through: :puzzle_ratings
  has_many :puzzles, through: :puzzle_ratings

end
