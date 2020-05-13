class Api::CartedPuzzlesController < ApplicationController
  
  def index
    @carted_puzzles = CartedPuzzle.where(user_id: current_user.id).where(status: 'carted')
    render 'index.json.jb'
  end

  def create
    @carted_puzzle = CartedPuzzle.new(
      user_id: current_user.id,
      puzzle_id: params[:puzzle_id],
      status: 'carted'
    )
    @carted_puzzle.save!
    render 'show.json.jb'
  end

  def destroy
    @carted_puzzle = CartedPuzzle.find_by(id: params[:id])
    @carted_puzzle.update(status: 'removed')
    render 'show.json.jb'
  end
end



# t.string "status"
# t.integer "user_id"
# t.integer "puzzle_id"
# t.integer "order_id"