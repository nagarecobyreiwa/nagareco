class Admins::ArtistsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @artist = Artist.new
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
       redirect_to admins_artists_path
    else
      flash[:notice] = "エラーが発生しました"
      redirect_to admins_artists_path
    end
  end

  def edit
    @artist =  Artist.find(params[:id])
  end

  def update
    @artist =  Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to admins_artists_path
    else
      render :edit
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
