class Users::CartItemsController < ApplicationController
  def index
    @product = cart_item_params

  end

  def create

    render "index"
  end

  def update
  end

  def destroy
  end

  private

  def cart_item_params
    params.require(:product).permit(:product_id)
  end
end
