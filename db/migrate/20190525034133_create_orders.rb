class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.integer :total_price
      t.boolean :card_status
      t.integer :payment
      t.integer :delivery, default: 0
      t.string :buyer_first_name
      t.string :buyer_last_name
      t.string :postcode
      t.string :address
      t.string :shipname_first
      t.string :shipname_last
      t.string :shipname_first_kana
      t.string :shipname_last_kana
      t.references :user, foreign_key: true
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
