class CreateCartedPuzzles < ActiveRecord::Migration[6.0]
  def change
    create_table :carted_puzzles do |t|
      t.string :status
      t.integer :user_id
      t.integer :puzzle_id
      t.integer :order_id

      t.timestamps
    end
  end
end
