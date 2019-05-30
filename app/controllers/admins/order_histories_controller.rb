class Admins::OrderHistoriesController < ApplicationController
  def index
    # create paginate function by kaminari
    @orders = Order.all
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
