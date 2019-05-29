class Users::OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    # please use when
    if params[:order][:select_address].to_i == 0
      if is_validated_address(params[:order]) == true
         @new_address = params[:order]
      else
         @user = current_user
         @addresses = current_user.addresses
         @address = Address.new
         render :new
      end
    elsif params[:order][:select_address].to_i == -1
      @address = current_user
    else
      @address = Address.find_by(id: params[:order][:select_address].to_i)
    end
    # please clean this code
    @cart_items = current_user.carts
    @total_price = 0
    @cart_items.each do |cart_item|
      @total_price += cart_item.quantity * cart_item.product.price
    end
    @user = current_user
    @payment = params[:order][:payment]
    @order = Order.new
    @cart_item = @order.order_products.build
  end

  def new
    @user = current_user
    @addresses = current_user.addresses
    @address = Address.new
  end

  def create
    order = Order.new(order_params)
    order.user_id = current_user.id
    order.save
    stock_managed
    destroy_cart
     if params[:order][:payment].to_i == 0
        render template: "users/thanks_order/create"
     end
  end
end

private
  def destroy_cart
      current_user.carts.each do |cart|
        cart.really_destroy!
      end
  end

  def stock_managed
      current_user.carts.each do |cart|
        product = cart.product
        quantity = product.stock - cart.quantity
        if quantity <= 0
          # where do you go ?
        else
          product.update(stock: quantity)
        end
      end
  end

  def order_params
    params.require(:order).permit(
      :buyer_first_name,
      :buyer_last_name,
      :shipname_first,
      :shipname_last,
      :shipname_first_kana,
      :shipname_last_kana,
      :postcode,
      :address,
      :total_price,
      :payment,
      :derively,
      order_products_attributes: [
        :id,
        :quantity,
        :price,
        :product_id
      ]
    )
  end

  def is_validated_address(new_address)

      new_address[:first_name].present? &&
      new_address[:last_name].present? &&
      new_address[:first_name_kana].present? &&
      new_address[:last_name_kana].present? &&
      new_address[:postcode].present? &&
      new_address[:address].present? &&
      new_address[:phone_number].present?

  end
