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
    # render json: {message: "thanks, but it's not saved yet!"}
    if @puzzle.save!
      render "show.json.jb"
    else 
      render json: {errors: @puzzle.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @puzzle = Puzzle.find_by(id: params[:id])
    @puzzle.name = params[:name] || @puzzle.name
    @puzzle.description = params[:description] || @puzzle.description
    @puzzle.piece_id = params[:piece_id] || @puzzle.piece_id
    @puzzle.format_id = params[:format_id] || @puzzle.format_id
    @puzzle.img_id = params[:img_id] || @puzzle.img_id
    # @puzzle.save!
    # render "show.json.jb"
    render json: {message: "thanks, but it's not saved yet!"}
  end

  def destroy
    @puzzle = Puzzle.find_by(id: params[:id])
    @puzzle.destroy
    render json: {message: "This puzzle has successfully been destroyed"}
  end
end



# id: puzzle.id,
#   name: puzzle.name,
#   description: puzzle.description,
#   piece_id: puzzle.piece_id,
#   format_id: puzzle.format_id,
#   img_id: puzzle.img_id,
#   rating_id: puzzle.rating_id