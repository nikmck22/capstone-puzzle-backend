class CreatePuzzleRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :puzzle_ratings do |t|
      t.integer :rating_id
      t.integer :puzzle_id
      t.integer :user_id

      t.timestamps
    end
  end
end
