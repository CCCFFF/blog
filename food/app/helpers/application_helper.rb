module ApplicationHelper

  def foods_url
    return "http:localhost:3000/foods"
  end

  def food_url
    return "http://localhost:3000/foods/#{id}"
  end
end
