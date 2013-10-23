class GreetingsController < ApplicationController

  def hello
    @name = session[:person]
    @color = session[:color]
    @font = session[:font]
  end

  def introduce
    session[:visitor] = params[:person]
    session[:color] = params[:color]
    session[:font] = params[:font]
    redirect_to "/hi"
  end

  def goodbye
    reset_session

    redirect_to "/hi"
  end
end
