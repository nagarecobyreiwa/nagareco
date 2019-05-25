class Users::OrdersController < ApplicationController
  def show
  end

  def new
    @addresses = current_user.addresses
  end

  def create
  end
end
