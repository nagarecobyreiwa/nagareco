class Admins::ArtistsController < ApplicationController
  def index
    @artist = Artist.new
    @artists = Artist.all
  end

  def create
    artist = Artist.new(artist_params)
    artist.save
    redirect_to admins_artists_path
  end

  def edit
    @artist =  Artist.find(params[:id])
  end

  def update
    artist =  Artist.find(params[:id])
    artist.update(artist_params)
    redirect_to admins_artists_path
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to admins_artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
