class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :postcode
      t.text :address
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
