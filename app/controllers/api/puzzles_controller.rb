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
      rating_number: 0,
      category: params[:category]
    )
    # render json: {message: "thanks, but it's not saved yet!"}
    if @puzzle.save!
      render "show.json.jb"
    else 
      render json: {errors: @puzzle.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # def average_rating
  #   total = 0
  #   average = 0
  #   @puzzle_ratings.each do |puzzle_rating|
  #     total = total + puzzle_rating.rating_number
  #     average = total / puzzle_ratings.length
  #   end
  # end

  def update
    @puzzle = Puzzle.find_by(id: params[:id])
    @puzzle.name = params[:name] || @puzzle.name
    @puzzle.description = params[:description] || @puzzle.description
    @puzzle.pieces = params[:pieces] || @puzzle.pieces
    @puzzle.format = params[:format] || @puzzle.format
    @puzzle.img_url = params[:img_url] || @puzzle.img_url
    @puzzle.rating_number = params[:rating_number] || @puzzle.rating_number
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


# def create

#   @carted_products = current_user.carted_products.where(status: 'carted')

#   subtotal = 0
#   tax = 0 
#   total = 0
#   @carted_products.each do |carted_product|
#     subtotal += carted_product.product.price * carted_product.quantity
#     tax += carted_product.product.tax * carted_product.quantity
#     total += carted_product.product.total * carted_product.quantity
#   end
  
  

#   @order = Order.new(
#     user_id: current_user.id,
#     subtotal: subtotal,
#     tax: tax,
#     total: total
#   )

#   @order.save

#   # @carted_products.each do |cp|
#   #   cp.update(order_id: @order.id, status: 'purchased')
#   # end

#   @carted_products.update_all(status: 'purchased', order_id: @order.id)
  
#   render "show.json.jb"
# end
# end
# id: puzzle.id,
#   name: puzzle.name,
#   description: puzzle.description,
#   piece_id: puzzle.piece_id,
#   format_id: puzzle.format_id,
#   img_id: puzzle.img_id,
#   rating_id: puzzle.rating_id