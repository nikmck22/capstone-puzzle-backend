class Api::CartedPuzzlesController < ApplicationController
  def index
    @carted_puzzles = CartedPuzzle.all
    render json: {message: "cart"}
  end
end



# t.string "status"
# t.integer "user_id"
# t.integer "puzzle_id"
# t.integer "order_id"