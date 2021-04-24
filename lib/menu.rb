class Menu
  attr_accessor :entries

  def initialize
    @entries = {}
  end
  
  def ask_for_integer_value
    puts "|Enter a strictly positive integer !#{' ' * (126 - 36 -1)}|"    
    print '|'
    input = gets.chomp
    puts "#{' ' *(126 - 1)}|"
    @entries[:integer] = input.to_i
  end
    
  def ask_for_choose_approache
    input = ''
    puts "|1. First approache, see the PositiveInteger#find_greatest_binary_gap method.#{' ' * (126 - 77 - 1)}|"
    puts "|2. Second approache, see the PositiveInteger#find_greatest_binary_gap_elegant_way method.#{' ' * (126 - 90 - 1)}|"
    puts "|3. Quit.#{' ' * (126 - 9 - 1)}|"
    loop do
      print '|'
      input = gets.chomp
      puts "#{' ' *(126 - 1)}|"
      break if (input.eql?('1') || input.eql?('2') || input.eql?('3'))
      puts "|You must enter only 1, 2 or 3 ! Try again please !#{' ' * (126 - 51 - 1)}|"
    end
    @entries[:choose] = input
  end
end
