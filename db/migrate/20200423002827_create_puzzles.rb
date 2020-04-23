class CreatePuzzles < ActiveRecord::Migration[6.0]
  def change
    create_table :puzzles do |t|
      t.string :name
      t.string :description
      t.integer :piece_id
      t.integer :format_id
      t.integer :img_id
      t.integer :rating_id

      t.timestamps
    end
  end
end
