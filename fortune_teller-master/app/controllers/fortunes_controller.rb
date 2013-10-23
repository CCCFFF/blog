class FortunesController < ApplicationController
  def numbers
    @lucky_numbers = [rand(100), rand(100), rand(100), rand(100), rand(100)]
  end
end
