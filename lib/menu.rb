class Menu
  attr_accessor :entries

  def initialize
    @entries = {}
  end
  
  def ask_integer_value
    puts "|Enter a strictly positive integer !#{' ' * (134 - 36 -1)}|"    
    print '|'
    input = gets.chomp
    puts "#{' ' *(134 - 1)}|"
    @entries[:integer] = input.to_i
  end
    
  def ask_choose_approach
    input = ''
    puts "|1. First approach, see the PositiveInteger#find_greatest_binary_gap method.#{' ' * (134 - 76 - 1)}|"
    puts "|2. Second approach, see the PositiveInteger#find_greatest_binary_gap_elegant_way method.#{' ' * (134 - 89 - 1)}|"
    puts "|3. Quit.#{' ' * (134 - 9 - 1)}|"
    loop do
      print '|'
      input = gets.chomp
      puts "#{' ' *(134 - 1)}|"
      break if (input.eql?('1') || input.eql?('2') || input.eql?('3'))
      puts "|You must choose between 1, 2 or 3 ! Try again please !#{' ' * (134 - 55 - 1)}|"
    end
    @entries[:choice] = input
  end
end
