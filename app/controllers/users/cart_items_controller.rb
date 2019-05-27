class Users::CartItemsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cart_items = current_user.carts
    @total_price = 0
    @cart_items.each do |cart_item|
      @total_price += cart_item.quantity * cart_item.product.price
    end
  end


  def create
    cart_item = Cart.where(product_id: params[:product][:id], user_id: current_user.id).first_or_create do |cart|
    # want to write 1 sentence
      cart.product_id = params[:product][:id]
      cart.user_id = current_user.id
      # edit this quanttity from getting data
      cart.quantity = params[:product][:quantity]
    end
    cart_item.save
    redirect_to users_cart_items_path
  end


  def update
    cart_item = Cart.find(params[:id])
    cart_item.update(quantity: params[:quantity].to_i )
    redirect_to users_cart_items_path
  end

  def destroy
    cart_item = Cart.find(params[:id])
    cart_item.really_destroy!
    redirect_to action: 'index'
  end

end
