class Admins::DeliveriesController < ApplicationController
  # same action controller in admin and user
  def update
    order_delivery = Order.find(params[:id])
    order_delivery.update(delivery: order_delivery.delivery + 1 )
    redirect_to admins_order_history_path(order_delivery)

    # create next action where do you want to go?
  end
end
