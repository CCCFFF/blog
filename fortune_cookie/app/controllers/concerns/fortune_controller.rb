class FortuneController < ApplicationController
   def cookie
    cookies = [
      "you need to study",
      "you need to read",
      "you need to practice"
    ]

    @my_cookies = cookies.sample
  end

  end
