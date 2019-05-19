class Admins::ProductsController < ApplicationController
  def index
    @products = Product.
  end

  def new
    @product = Product.new
    # I wanto to associate @product with instatnce disk and song.
    @disks = @product.disks.build
    @songs = @disks.songs.build

    @artists = Artist.all
    @genres = Genre.all
    @labels = Label.all
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to admins_products_path
  end

  def edit
    @product = Product.find(params[:id])

    @disks = @product.disks.build
    @songs = @disks.songs.build

    @artists = Artist.all
    @genres = Genre.all
    @labels = Label.all
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to admins_products_path
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to admins_products_path
  end

  private

  def product_params
  params.require(:product).permit(
    :name,
    :image,
    :stock,
    :price,
    :on_sale,
    :artist_id,
    :genre_id,
    :label_id,
    disks_attributes: [
      :id,
      :name,
      songs_attributes: [
        :id,
        :name,
        :time,
      ]
    ]
  )
  end
end
