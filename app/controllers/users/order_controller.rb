class Users::OrderController < ApplicationController

  def new
    @user = current_user
    @addresses = current_user.addresses
    @address = Address.new
  end

  def show
    @cart_items = current_user.carts
    @order = Order.new
  end

  def create
  end


end
