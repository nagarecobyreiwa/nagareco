class AddDetailToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :deleted_at, :datetime
  end
end
