class Users::MypageController < ApplicationController
    before_action :authenticate_user!

    def index
     @user = current_user
     @orders = Order.page(params[:page]).where(user_id: current_user.id).where(delivery: [0])
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
         redirect_to users_finish_path(current_user.id)
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
