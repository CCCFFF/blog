class FortuneController < ApplicationController
  def number
    @my_number = [rand(100), rand(100), rand(100), rand(100), rand(100)]

  end
end
