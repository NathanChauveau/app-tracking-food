class AddImagePath < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :image_data, :string
  end
end
