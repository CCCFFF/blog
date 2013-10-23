class PicturesController < ApplicationController

  def index
    @picture = Picture.all
  end

  def show
    @pictureid = Picture.find(params[:id])
  end

  def new

  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save

  end

end
