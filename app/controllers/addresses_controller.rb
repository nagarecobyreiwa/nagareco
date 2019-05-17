class AddressesController < ApplicationController
  def index
    @address = Address.all
    @user = User.find(params[:id])
  end

  def new
    @address = Address.new
    @user = User.find(params[:id])
  end

  def create
    @user = User.find(params[:id])
    @address = Address.new(address_params)
    @address.save
    redirect_to root_path(@user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def address_params
    params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postcode,
      :address, :phone_number)
  end

end
