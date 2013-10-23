class FortuneController < ApplicationController
  def numbers
    @lucky_number = [rand(100), rand(100), rand(100), rand(100)]
  end

end

