class Menu
  attr_accessor :entries

  def initialize
    @entries = {}
  end
  
  def show
    input = ''
    puts "|Enter a positive integer other than zero.#{' ' * (126 - 42 -1)}|"    
    loop do
      print '|'
      input = gets.chomp
      puts "#{' ' *(126 - 1)}|"
      break if input.to_i > 0
      puts "|You must enter a positive integer other than zero ! Try again please !#{' ' * (126 - 71 - 1)}|"
    end

    @entries[:integer] = input.to_i
    
    puts "|1. First approache.#{' ' * (126 - 20 - 1)}|"
    puts "|2. Second approache.#{' ' * (126 - 21 - 1)}|"
    puts "|3. Quit.#{' ' * (126 - 9 - 1)}|"
    
    loop do
      print '|'
      input = gets.chomp
      puts "#{' ' *(126 - 1)}|"
      break if (input.eql?('1') || input.eql?('2') || input.eql?('3'))
      puts "|You must enter only 1, 2 or 3 ! Try again please !#{' ' * (126 - 51 - 1)}|"
    end
    @entries[:choose] = input

    entries
  end
end