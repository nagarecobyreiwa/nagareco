class Admins::GenresController < ApplicationController
  def index
    @genre = Genre.new
  end

  def create
    genre = Genre.new(genre_params)
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
