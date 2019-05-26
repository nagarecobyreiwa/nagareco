class Admins::UsersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @users = User.page(params[:page]).reverse_order
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to admins_user_path(@user.id)
    else
       render :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to admins_users_path
  end
end

def user_params
  params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postcode,
    :address, :phone_number)
end
