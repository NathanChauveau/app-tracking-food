class MoveWeight < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :weight
    add_column :product_records, :weight, :decimal, precision: 5, scale: 2
  end
end
