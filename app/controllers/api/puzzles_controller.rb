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
      description: params[:description],
      pieces: params[:pieces],
      format: params[:format],
      img_url: params[:img_url],
      rating_id: params[:rating_id],
      category: params[:category]
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
    @puzzle.pieces = params[:pieces] || @puzzle.pieces
    @puzzle.format = params[:format] || @puzzle.format
    @puzzle.img_url = params[:img_url] || @puzzle.img_url
    @puzzle.rating_id = params[:rating_id] || @puzzle.rating_id
    @puzzle.category = params[:category] || @puzzle.category
    @puzzle.save!
    render "show.json.jb"
    # render json: {message: "thanks, but it's not saved yet!"}
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