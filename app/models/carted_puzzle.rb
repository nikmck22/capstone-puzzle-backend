class CartedPuzzle < ApplicationRecord
  belongs_to :user
  belongs_to :puzzle
  belongs_to :order, optional: true
end
