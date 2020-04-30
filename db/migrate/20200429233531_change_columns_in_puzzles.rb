class ChangeColumnsInPuzzles < ActiveRecord::Migration[6.0]
  def change
    rename_column :puzzles, :piece_id, :pieces
    rename_column :puzzles, :format_id, :format
    rename_column :puzzles, :img_id, :img_url
    add_column :puzzles, :category_id, :integer
  end
end
