class BankAccount

  def initialize
    @balance = gets.chomp.to_i
  end

  def balance
    @balance
  end

  def deposit
    @balance = @balance + 10
  end

  def withdrawal
    @balance = @balance - 10
  end

end
puts "What is are you depositing?"
  initialize
  checking = BankAccount.new
  puts "#{checking.balance}"
  puts "#{checking.deposit}"
  puts "#{checking.deposit}"
  puts "#{checking.withdrawal}"
