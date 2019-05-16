class Admins::ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
    @product.disks.build
    @product.disk.songs.build
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
