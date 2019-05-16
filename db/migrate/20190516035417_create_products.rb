class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_id
      t.integer :price
      t.integer :stock
      t.boolean :on_sale
      t.datetime :deleted_at
      t.references :artist_id, foreign_key: true
      t.references :genre_id, foreign_key: true
      t.references :label_id, foreign_key: true

      t.timestamps
    end
  end
end
