class Users::AddressesController < ApplicationController
  def index
    @addresses = Address.where(current_user.id)
    @user = User.find(params[:id])
  end

  def new
    @address = Address.new
    @address.user_id = current_user.id
  end

  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id
    @address.save
    redirect_to addreses_path
  end

  def edit
    @address = Address.find(params[:id])
    #@address.user_id = current_user.id
  end

  def update
       @address = Address.find(params[:id])
       @address.update(address_params)
       redirect_to addresses_path
  end

  def destroy
  end

private
  def address_params
    params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postcode,
      :address, :phone_number)
  end

end
