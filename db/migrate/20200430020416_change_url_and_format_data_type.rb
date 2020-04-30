class ChangeUrlAndFormatDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :puzzles, :format, :string
    change_column :puzzles, :img_url, :string
  end
end
