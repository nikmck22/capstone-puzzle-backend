class Api::PuzzleRatingsController < ApplicationController

  def create
  # @puzzle_rating = Puzzle.where(user_id: current_user.id).where(id: :puzzle.id)
  

    @puzzle_rating = PuzzleRating.new(
      rating_number: params[:rating_number],
      puzzle_id: params[:puzzle_id],
      user_id: current_user.id
    )
    @puzzle_rating.save!

    @puzzle = Puzzle.find_by(id: puzzle_rating.puzzle_id)
    @puzzle.update(rating_number: puzzle_rating.rating_number)
    @puzzle.save!

    render "show.json.jb"

  end
end

    # puzzle: Puzzle.find_by(id: carted_puzzle.puzzle_id),

# def create
#   @carted_puzzles = CartedPuzzle.where(user_id: current_user.id).where(status: 'carted')
  

#   @order = Order.new(
#     user_id: current_user.id,
#   )

#   @order.save
#   @carted_puzzles.update_all(status: 'ordered', order_id: @order.id)
  
#   render "show.json.jb"
# t.integer "rating_number"
# t.integer "puzzle_id"
# t.integer "user_id"


# !!!STACKOVERFLOW!!!
# class RatingsController < ApplicationController
#   before_filter :set_article

#   def create
#     @rating = @article.ratings.new :value => params[:value]
#     if @rating.save
#       redirect_to article_ratings_path(@article), :notice => "Rating successful."
#     else
#       redirect_to article_ratings_path(@article), :notice => "Something went wrong."
#     end
#   end

#   def update
#     @rating = Rating.find(params[:id])
#     @rating.update_attribute :value, params[:value]
#   end

#   private
#     def set_article
#       @article = Article.find(parms[:article_id])
#     end
# end