class CreateDisks < ActiveRecord::Migration[5.2]
  def change
    create_table :disks do |t|
      t.string :name
      t.integer :order
      t.datetime :deleted_at
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
