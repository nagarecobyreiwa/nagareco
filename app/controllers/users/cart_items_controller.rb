class Users::CartItemsController < ApplicationController
  def index
    @cart_items = Cart.where(user_id: current_user.id)
    binding.pry
  end

  def create
    # Edit this action by using find or create by
    cart_item = Cart.new(product_id: cart_item_params[:id].to_i, user_id: current_user.id, quantity: 1)
    cart_item.save
    redirect_to action: 'index'
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
