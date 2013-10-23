class PicturesController < ApplicationController

  def index
    @pictures = Picture.all

  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new

  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.title = params[:title]
    p.room = params[:room]
    p.save

    redirect_to pictures_url
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.home_id = params[:home_id]
    @picture.source = params[:source]
    @picture.caption = params[:caption]
    @picture.title = params[:title]
    @picture.room = params[:room]
    @picture.save

    redirect_to picture_url
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to pictures_url
  end

end
