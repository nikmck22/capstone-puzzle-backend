class RemoveRatingsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table("ratings")
    rename_column :puzzle_ratings, :rating_id, :rating_number
    rename_column :puzzles, :rating_id, :rating_number
  end
end
