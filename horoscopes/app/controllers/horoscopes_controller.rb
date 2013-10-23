class HoroscopesController < ApplicationController
  def new
    horoscopes = [
      "You will be building apps very soon",
      "Do some Pine to review if you need to"
    ]
  @my_horoscope = horoscopes.sample
  end

  def number
    sample_num = rand(100)
    @sample_num = sample_num
  end
end
