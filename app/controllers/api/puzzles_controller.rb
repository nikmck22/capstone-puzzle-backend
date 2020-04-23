class Api::PuzzlesController < ApplicationController

  def index
    @puzzles = Puzzle.all
    render "index.json.jb"
  end

  def show
    @puzzle = Puzzle.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @puzzle = Puzzle.new(
      name: params[:name],
      description: params[:description]
    )
    render json: {message: "thanks, but it's not saved yet!"}
    # if @puzzle.save!
    #   render "show.json.jb"
    # else 
    #   render json: {errors: @puzzle.errors.full_messages}, status: :unprocessable_entity
    # end
  end
end
