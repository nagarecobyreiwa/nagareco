class Users::CartItemsController < ApplicationController
  def index
    @cart_item = current_user.carts
  end

  def create
    cart_item = Cart.where(product_id: params[:product][:id], user_id: current_user.id, deleted_at: nil).first_or_create do |cart|
    # want to write 1 sentence
      cart.product_id = params[:product][:id]
      cart.user_id = current_user.id
      # edit this quanttity from getting data
      cart.quantity = 1
    end
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
