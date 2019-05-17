class UsersController < ApplicationController

# 仮トップページ
  def top

  end

  def show
   @user = User.find(params[:id])
  end

  def edit
   @user = User.find(params[:id])
  end

  def edit_login
   @user = User.find(params[:id])
  end

  def edit_address
   @user = User.find(params[:id])
  end

  def update
    
  end
end
