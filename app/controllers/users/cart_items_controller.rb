class Users::CartItemsController < ApplicationController
  def index
  end

  def create
    cart_item = Cart.new(product_id: cart_item_params[:id].to_i, user_id: current_user.id, quantity: 1)
    cart_item.save
    render "index"
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
