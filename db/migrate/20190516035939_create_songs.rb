class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.time :time
      t.integer :order
      t.references :disk_id, foreign_key: true

      t.timestamps
    end
  end
end
