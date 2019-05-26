class Users::ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.find_by(id: params[:id])
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
