class Users::AddressesController < ApplicationController
  before_action :authenticate_user!
  def index
    @addresses = Address.where(user_id: current_user).page(params[:page]).reverse_order
    @user = current_user
    # @address = Address.find(params[:id])
  end

  def new
    @address = Address.new
    @user = current_user
  end

  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id
    if
      @address.save
      redirect_to users_addresses_path(current_user.id)
    else
      render :new
    end

  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    if
      @address.update(address_params)
      redirect_to users_addresses_path(current_user.id)
    else
      render :edit
    end

  end

  def destroy
    address = Address.find(params[:id])
    address.really_destroy!
    redirect_to users_addresses_path(current_user.id)
  end

private
  def address_params
    params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postcode,
      :address, :phone_number, :user_id)
  end

  def user_params
    params.require(:user)
  end

end
