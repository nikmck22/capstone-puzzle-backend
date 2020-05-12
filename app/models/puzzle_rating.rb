class PuzzleRating < ApplicationRecord
  belongs_to :puzzle
  belongs_to :user
  # validates_inclusion_of :value, :in => 1..5
end


