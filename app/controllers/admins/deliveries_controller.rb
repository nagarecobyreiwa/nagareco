class Admins::DeliveriesController < ApplicationController
  # same action controller in admin and user
  def update
    order_delivery = Order.find(params[:id])
    order_delivery.update(derively: order_delivery.derively + 1 )
    # create next action where do you want to go?
  end
end
