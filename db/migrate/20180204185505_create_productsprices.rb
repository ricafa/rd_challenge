class CreateProductsprices < ActiveRecord::Migration[5.0]
  def change
    create_table :productsprices do |t|
      t.references :product, foreign_key: true
      t.references :currency, foreign_key: true
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
