class Admins::GenresController < ApplicationController
  def index
    @genre = Admins::Genre.new
    @genres = Admins::Genre.all
  end

  def create
    genre = Admins::Genre.new(genre_params)
    genre.save
    redirect_to admins_genres_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def genre_params
    params.require(:admins_genre).permit(admin_genre: [:name])
  end
end
