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

    redirect_to "http://localhost:3000/pictures"

  end

  def alter
@pictureid = Picture.find(params[:id])

  end

  def edit
    p = Picture.find(params[:id])
    p.source = params[:source]
    p.caption = params[:caption]
    p.save

    redirect_to "http://localhost:3000/pictures"

  end

  def delete

   p = Picture.find(params[:id])
   p.destroy

   redirect_to "http://localhost:3000/pictures"

  end


end
