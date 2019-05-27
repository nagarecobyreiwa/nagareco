class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  accepts_nested_attributes_for :order_products

  def user
    User.unscoped {super}
  end
end
