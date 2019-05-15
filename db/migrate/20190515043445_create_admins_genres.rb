class CreateAdminsGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :admins_genres do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
