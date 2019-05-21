class Users::UsersController < ApplicationController

# 仮トップページ
  def top

  end

  def index
   @user = current_user
  end

  def show
   @user = User.find(params[:id])
  end

  def edit_login
   @user = User.find(params[:id])
  end

  def edit
   @user = User.find(params[:id])
  end

  def edit_finish

  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      #一旦リダイレクト先マイページへ変更
       redirect_to root_path(@user.id)
    else
       render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postcode,
      :address, :phone_number)
  end


end