class Users::CartItemsController < ApplicationController
  def index
<<<<<<< HEAD
    @cart_item = current_user.carts
  end

  def create
    cart_item = Cart.find_or_create_by(product_id: params[:product][:id], user_id: current_user.id, quantity: 1)
    cart_item.save
    redirect_to users_cart_items_path
=======
    @cart_items = Cart.where(user_id: current_user.id)
    binding.pry
  end

  def create
    # Edit this action by using find or create by
    cart_item = Cart.new(product_id: cart_item_params[:id].to_i, user_id: current_user.id, quantity: 1)
    cart_item.save
    redirect_to action: 'index'
>>>>>>> 4c33d3f50407f6d6281789fed259113e271b82a1
  end

  def update
    cart_item = Cart.find(params[:id])
    cart_item.update(quantity: params[:product_num].to_i )
    redirect_to users_cart_items_path
  end

  def destroy
  end

end
