class OrangeTree

  def initialize
    @fruit= 0
    @treeh = 0
    @age = 0
  end

  def height
    @treeh = @treeh + 12
  end

  def age
    @age = @age + 1
  end

  def fruit
    @fruit = @fruit + (@age*rand(20))
  end

  def one_year_passes
    if @age >= 5
      puts "Your Tree Has Died"

    elsif
      age
      height
      fruit
      puts "one year has passed"

    end

  end


end


orange = OrangeTree.new
orange.one_year_passes
puts orange.age
puts orange.height
orange.one_year_passes
puts orange.age
puts orange.height
orange.one_year_passes
puts orange.age
puts orange.height
orange.one_year_passes
puts orange.age
puts orange.height
orange.one_year_passes
puts orange.age
puts orange.height
orange.one_year_passes
puts orange.age
puts orange.height
