class CreateDisks < ActiveRecord::Migration[5.2]
  def change
    create_table :disks do |t|
      t.string :name
      t.integer :order
      t.references :product_id, foreign_key: true

      t.timestamps
    end
  end
end
