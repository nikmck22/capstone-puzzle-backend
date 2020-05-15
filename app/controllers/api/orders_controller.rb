class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    @orders = current_user.orders
    render "index.json.jb"    
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  def create
    @carted_puzzles = CartedPuzzle.where(user_id: current_user.id).where(status: 'carted')
    

    @order = Order.new(
      user_id: current_user.id,
      puzzle_id: params[:puzzle_id]
    )

    @order.save!
    @carted_puzzles.update_all(status: 'ordered', order_id: @order.id)
    
    render "show.json.jb"
  end
end
