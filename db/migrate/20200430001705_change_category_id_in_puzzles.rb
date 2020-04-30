class ChangeCategoryIdInPuzzles < ActiveRecord::Migration[6.0]
  def change
    remove_column :puzzles, :category_id, :integer
    add_column :puzzles, :category, :string
  end
end
