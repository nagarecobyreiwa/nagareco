class Users::OrderHistoriesController < ApplicationController
　
  def index
    #create paginate function by kaminari
    # @orders = Order.where(user_id: current_user.id)
  end

  def show
    # @order_histories = Order.find_by(id: params[:id])
    #
    # @total_price = 0
    # @order_histories.each do |order_histories|
    #   @total_price += order_histories.order.price *order_histories.order.quantity
    end
  end

end
