class HoroscopesController < ApplicationController
  def index
    @horoscopes = Horoscope.all
  end

  def zodiac
    @horoscope = Horoscope.find_by({ :sign => params["sign"] })
    render 'zodiac'
  end
end








