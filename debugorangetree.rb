class OrangeTree

  def initialize
    @height = 0
    @lifespan = 10
    @oranges = 0
    @harvest = 0
  end

  def height
    @height
  end

  def lifespan
    @lifespan
  end

  def one_year_passes
    still_alive? ? grow : (puts 'Your tree is petrified.')
    # conditional_statement ? if true run this code : if false run this code    #
    @harvest = 0
  end

  def grow
    @lifespan = @lifespan - 1
    @height = @height + 1
    @oranges = 0
    puts "Your tree has a #{@lifespan} years left to live and it's #{@height}ft tall.\n"
    bear_fruit if @lifespan > 3
  end

  def bear_fruit
    if @lifespan == 7 || @lifespan == 6
      @oranges += 3
    elsif @lifespan == 5 || @lifespan == 4
      @oranges += 5
    elsif @lifespan == 3 || @lifespan == 2
      @oranges += 2
    end
  end

  def still_alive?
    @lifespan > 0 ? true : false
  end

  def count_the_oranges
    puts "You count #{@oranges} oranges on the tree."
  end

  def pick_an_orange
    if @oranges > 0
      puts "You pick a single orange"
      @oranges = @oranges - 1
      @harvest = @harvest + 1
    elsif @oranges < 0
      puts "There are no orange to pick."
    end
  end

  def count_harvest
    puts "You harvested #{@harvest} oranges this year."
  end

end

tree = OrangeTree.new
puts "A new tree has been born..\n\n"

tree.lifespan.times do
  tree.one_year_passes
  tree.count_the_oranges
  tree.pick_an_orange
  tree.count_harvest
  puts
end
