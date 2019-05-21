class Users::CartItemsController < ApplicationController
  def index
    @cart_item = current_user.carts
  end

  def create
    cart_item = Cart.find_or_create_by(product_id: params[:product][:id], user_id: current_user.id, quantity: 1)
    cart_item.save
    redirect_to users_cart_items_path
  end

  def update
  end

  def destroy
  end

  private

  def cart_item_params
    params.require(:product).permit(:id)
  end
end
