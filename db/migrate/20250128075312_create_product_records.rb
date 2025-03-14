class CreateProductRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :product_records do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
