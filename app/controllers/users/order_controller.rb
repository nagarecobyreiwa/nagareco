class Users::OrderController < ApplicationController
  before_action :authenticate_user!
  def index
    @cart_items = current_user.carts
    @order = Order.new
    @select_address = params[:select_address]
    # how to get address params you write
  end

  def new
    @user = current_user
    @addresses = current_user.addresses
    @address = Address.new
  end

  def show
  end

  def create
  end
end
