class MoviesController < ApplicationController

  def Index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new

  end

  def create
    @movie = Movie.new
    @movie.source = params[:source]
    @movie.caption = params[:caption]
    @movie.save

    redirect_to "http://localhost:3000/movies"

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


end
