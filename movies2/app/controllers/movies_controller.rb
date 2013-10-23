class MoviesController < ApplicationController

  def index

    @movies = Movie.all

  end

  def new

  end

  def create
    m = Movie.new
    m.source = params[:source]
    m.caption = params[:caption]
    m.save

    redirect_to "http://localhost:3000/movies"
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.source = params[:source]
    @movie.caption = params[:caption]
    @movie.save

    redirect_to "http://localhost:3000/movies/#{@movie.id}"
  end

  def delete
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to "http://localhost:3000/movies"
  end

end
