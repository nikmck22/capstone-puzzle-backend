class PuzzleRating < ApplicationRecord
  belongs_to :puzzle
  belongs_to :rating
  belongs_to :user
end
