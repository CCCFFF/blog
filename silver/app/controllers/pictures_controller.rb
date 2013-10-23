class PicturesController < ApplicationController

def index

  @pictures = Picture.all

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

def show
  @picture = Picture.find(params[:id])
end

def delete
  p = Picture.find(params[:id])
  p.destroy

  redirect_to "http://localhost:3000/pictures"
end

def edit
@picture = Picture.find(params[:id])
end

def update
  p = Picture.find(params[:id])
  p.source = params[:source]
  p.caption = params[:caption]
  p.save

  redirect_to "http://localhost:3000/pictures"
end


end

