class Api::PuzzleRatingsController < ApplicationController

  def create
    @puzzle_rating = PuzzleRating.new(
      rating_id: params[:name],
      # puzzle_id: current_puzzle.id,
      user_id: current_user.id
    )
    # render json: {message: "thanks, but it's not saved yet!"}
    if @puzzle.save!
      render "show.json.jb"
    else 
      render json: {errors: @puzzle.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
