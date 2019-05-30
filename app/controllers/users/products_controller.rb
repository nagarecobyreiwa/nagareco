class Users::ProductsController < ApplicationController
  def index
    @search = Product.ransack(params[:q]) #ransackメソッド推奨
    @search_products = @search.result.page(params[:page]).reverse_order
    @products = Product.where(on_sale: true).page(params[:page]).reverse_order
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
