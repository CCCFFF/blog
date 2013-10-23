class PickController < ApplicationController

  def num

    numbers = rand(101)

    @my_num = numbers
  end



end
