class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def new

  end

  def create
    v = Video.new
    v.home_id = params[:home_id]
    v.caption = params[:caption]
    v.source = params[:source]
    v.title = params[:title]
    v.room = params[:room]

    if v.save
      redirect_to videos_url, notice: "Video Created Successfully"
    else
      redirect_to edit_video_url, notice: "Please Add Required Fields"
    end
  end

  def show
    @video = Video.find(params[:id])

  end

  def edit
  end

  def update
    @video = Vido.find(params[:id])
    @video.source = params(:source)
    @video.caption = params(:caption)
    @video.title = params(:title)
    @video.room = params(:room)

    if @video.save
      redirect_to videos_url, notice: "Video Updated Successfully"
    else
      redirect_to edit_video_url, notice: "Please Add Required Fields"
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    redirect_to videos_url
  end

end
