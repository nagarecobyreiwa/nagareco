class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :quantity, default: 1
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
