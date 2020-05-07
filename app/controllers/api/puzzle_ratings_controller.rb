class Api::PuzzleRatingsController < ApplicationController

  def create
    #@rating_number = current_user.puzzles.where(puzzle_id: params[:puzzle_id])
    # if rating_number < 1 && rating_number > 5
    #   error
    # end

    @puzzle_rating = PuzzleRating.new(
      rating_number: params[:rating_number],
      puzzle_id: 104,
      user_id: current_user.id
    )
    render json: {message: "thanks, but it's not saved yet!"}
    # if @puzzle_rating.save!
    #   render "show.json.jb"
    # else 
    #   render json: {errors: @puzzle_rating.errors.full_messages}, status: :unprocessable_entity
    # end
  end
end



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