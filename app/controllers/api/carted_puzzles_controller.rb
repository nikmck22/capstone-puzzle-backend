class Api::CartedPuzzlesController < ApplicationController
  
  def index
    @carted_puzzles = CartedPuzzle.where(user_id: current_user.id).where(status: 'carted')
    # @puzzle = Puzzle.find_by(id: params[:id])(
    #   name: params[:name],
    #   description: params[:description],
    #   pieces: params[:pieces],
    #   format: params[:format],
    #   img_url: params[:img_url],
    #   rating_number: params[:rating_number],
    #   category: params[:category]
    # )
    render 'index.json.jb'
  end

  def create
    @carted_puzzle = CartedPuzzle.new(
      user_id: current_user.id,
      puzzle_id: params[:puzzle_id],
      status: 'carted'
    )
    @carted_puzzle.save
    render 'show.json.jb'
  end

  def destroy
    @carted_puzzle = CartedPuzzle.find_by(id: params[:id])
    @carted_puzzle.update(status: 'removed')
    render json: {message: "succesfully removed from cart"}
  end
end



# t.string "status"
# t.integer "user_id"
# t.integer "puzzle_id"
# t.integer "order_id"