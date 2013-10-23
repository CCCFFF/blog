FortuneTeller::Application.routes.draw do
  root "fortunes#numbers"

  get "/lucky_numbers", :controller => "fortunes", :action => "numbers"

  get "/horoscopes" => "horoscopes#index"

  get "/horoscopes/:sign" => "horoscopes#zodiac"
end
