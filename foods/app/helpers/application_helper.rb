module ApplicationHelper

  def foods_url
    return "http://localhost:3000/foods"
  end

  def food_url(id)
    return "http://localhost:3000/foods/#{id}"
  end

  def new_food_url
    return "http://localhost:3000/foods/new"
  end

  def edit_food_url(id)
    return "http://localhost:3000/foods/#{id}/edit"
  end

end
