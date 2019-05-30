class OrderProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order

  def product
    Product.unscoped {super}
  end
end
