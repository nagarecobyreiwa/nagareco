class Admins::ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
    # I wanto to associate @product with instatnce disk and song.
    @disks = @product.disks.build
    @songs = @disks.songs.build
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to admins_products_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :disks, :songs, :time)
  end
end
