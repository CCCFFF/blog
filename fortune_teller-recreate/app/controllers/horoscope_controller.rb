class HoroscopeController < ApplicationController

  def index
    @horoscope = Horoscope.all
  end

  def zodiac
    @my_horoscope = Horoscope.find_by({ :sign => params["sign"]})
    render "zodiac"

  end

end
