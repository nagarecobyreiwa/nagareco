class Users::CartItemsController < ApplicationController
  def index
    @cart_items = current_user.carts
    @total_price = 0
    @cart_items.each do |cart_item|
      @total_price += cart_item.quantity * cart_item.product.price
    end
  end


  def create
    cart_item = Cart.find_or_create_by(product_id: params[:product][:id], user_id: current_user.id, quantity: 1)
    cart_item.save
    redirect_to users_cart_items_path
  end


  def update
    cart_item = Cart.find(params[:id])
    cart_item.update(quantity: params[:product_num].to_i )
    redirect_to users_cart_items_path
  end

  def destroy
    cart_item = Cart.find(params[:id])
    cart_item.destroy
    redirect_to users_cart_items_path
  end

end
