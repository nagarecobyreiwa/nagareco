class Users::OrderController < ApplicationController

  def new
    @user = current_user
    @addresses = current_user.addresses
    @address = Address.new
    #binding.pry
    #Payjp.api_key = "sk_test_bee0ed300c6809dd26077a04"
    #token = Payjp::Token.create(
    #:card => {
    #:number => params[:number],
    #:cvc => params[:cvc],
    #:exp_month => params[:exp_month],
    #:exp_year => params[:exp_year]
  #}
#)

 #   charge = Payjp::Charge.create(
  #    :amount => 10000,
   #   :card => token.id,
    #  :currency => 'jpy',
    #)
  end

  def show
    @cart_items = current_user.carts
    @order = Order.new
  end

  def create
  end


end
