class Users::ProductsController < ApplicationController
  def index
    @products = Product.where(on_sale: true).page(params[:page]).reverse_order
    @product = Product.find_by(id: params[:id])
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
