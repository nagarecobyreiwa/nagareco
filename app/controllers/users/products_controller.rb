class Users::ProductsController < ApplicationController
  def index
    @search = Product.where(on_sale: true).ransack(params[:q])
    #@search = Product.ransack(name_cont: params[:q], on_sale_cont: true, m: 'and') #ransackメソッド推奨
    @search_products = @search.result.page(params[:page]).reverse_order
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
