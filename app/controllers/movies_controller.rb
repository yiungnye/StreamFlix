class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
  end

  private

  def movie_params
    params.require(:movie).permits(:title, :description, :release_date, :photo)
  end
end
