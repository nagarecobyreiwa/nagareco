class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_id
      t.integer :price
      t.integer :stock
      t.boolean :on_sale
      t.datetime :deleted_at
      t.references :artist, foreign_key: true
      t.references :genre, foreign_key: true
      t.references :label, foreign_key: true

      t.timestamps
    end
  end
end
