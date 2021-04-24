class Application
  def perform
    puts '-' * 134
    puts "|#{' ' * 3}Hello ! Are you fine ! This program can calculate, with two approachs, the greatest binary gap of a strictly positive integer.#{' ' * 3}|"
    puts '-' * 134
    
    menu = Menu.new
    
    while (true)
      puts "|#{' ' * (134 - 1 - 1)}|"
      
      positive_integer = PositiveInteger.new
      
      menu.ask_choose_approach
      choice = menu.entries[:choice]
      break if choice.eql? '3'
      
      loop do
        menu.ask_integer_value
        break if positive_integer.update_value(menu.entries[:integer])
      end
      integer_value = positive_integer.value
      greatest_binary_gap = choice == '1' ? positive_integer.find_greatest_binary_gap : positive_integer.find_greatest_binary_gap_elegant_way
      puts  "|The greatest binary gap of #{integer_value} is #{greatest_binary_gap}."\
            "#{' ' * (134 - 27 - integer_value.to_s.size - greatest_binary_gap.to_s.size - 6 - 1)}|"
    end
    
    puts "|Bye !#{' ' * (134 - 6 - 1)}|"
  end
end
