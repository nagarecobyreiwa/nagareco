class Users::OrdersController < ApplicationController
  def index
    # please use when
    if params[:order][:select_address].to_i == 0
      @new_address = params[:order]
    elsif params[:order][:select_address].to_i == -1
      @address = current_user
    else
      @address = Address.find_by(id: params[:order][:select_address].to_i)
    end
  end

  def new
    @user = current_user
    @addresses = current_user.addresses
    @address = Address.new
  end

  def create
  end
end
