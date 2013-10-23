class OrangeTree
 def initialize
  @height = 0
  @age = 0
  @fruit = 0
end

def height
  @height = @height + 12
end

def age
  @age = @age + 1
end

def fruit
if @age > 2 && @age <= 5
    @fruit = (@age * 10)
  elsif @age > 5
    @fruit = (@age * 5)
  else
    @fruit = 0
  end

end

def count_the_harvest
  puts "#{@fruit}"
end

def pick_an_orange
  if @fruit > 0
  @fruit = @fruit - 1
else
  @fruit = @fruit
 end
end

def one_year_passes
  if @age < 7
    @fruit = 0
  height
  age
  fruit
  puts "Your tree has grown #{@height} inches"
  puts "Your tree is now #{@age} year(s) old"
  puts "Your tree has #{@fruit} oranges"
else
  puts "Your tree died"
  @fruit = 0
end
end

end

orange = OrangeTree.new

10.times do
orange.one_year_passes
orange.pick_an_orange
orange.pick_an_orange
orange.count_the_harvest
end

