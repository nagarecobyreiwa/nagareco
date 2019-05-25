class Users::OrderController < ApplicationController

  def new
    @user = current_user
    @addresses = current_user.addresses
    @address = Address.new
    #binding.pry
    Payjp.api_key = ENV["sk_test_bee0ed300c6809dd26077a04"] 
    Payjp::Charge.create(
      :amount => 9800,
      :card => params['payjp-token'],
      :currency => 'jpy'
    )
  end

  def show
    @cart_items = current_user.carts
    @order = Order.new
  end

  def create
  end


end
