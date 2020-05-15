class AddPuzzleToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :puzzle_id, :integer
  end
end
