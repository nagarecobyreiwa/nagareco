class Users::DeliveriesController < ApplicationController
  def update
    order_delivery = Order.find(params[:id])
    order_delivery.update(delivery: order_delivery.delivery + 1 )
    redirect_to users_order_histories_path
    # create next action where do you want to go?
  end
end
