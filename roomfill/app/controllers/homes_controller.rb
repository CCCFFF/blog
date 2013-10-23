class HomesController < ApplicationController

  def index
    @homes = Home.all
  end

  def new

  end

  def create
    h = Home.new
    h.name = params[:name]
    h.room_a = params[:room_a]
    h.room_b = params[:room_b]
    h.room_c = params[:room_c]
    h.room_d = params[:room_d]
    h.room_e = params[:room_e]
    h.room_f = params[:room_f]
    h.room_g = params[:room_g]
    h.room_h = params[:room_h]
    h.room_i = params[:room_i]
    h.room_j = params[:room_j]
    h.room_k = params[:room_k]
    h.room_l = params[:room_l]

    if h.save
      redirect_to homes_url, notice: "Home Created Successfully"
    else
      redirect_to new_home_url, notice: "Please Add A Name"
    end
  end

  def show
    @home = Home.find(params[:id])
  end

  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])
    @home.room_a = params[:room_a]
    @home.room_b = params[:room_b]
    @home.room_c = params[:room_c]
    @home.room_d = params[:room_d]
    @home.room_e = params[:room_e]
    @home.room_f = params[:room_f]
    @home.room_g = params[:room_g]
    @home.room_h = params[:room_h]
    @home.room_i = params[:room_i]
    @home.room_j = params[:room_j]
    @home.room_k = params[:room_k]
    @home.room_l = params[:room_l]

    if @home.save
      redirect_to homes_url, notice: "Home Created Successfully"
    else
      redirect_to edit_home_url, notice: "Please Add A Name"
    end
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy

    redirect_to homes_url
  end

end
