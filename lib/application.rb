class Application
  def perform
    puts '-' * 126
    puts "|#{' ' *3}Hello ! Are you fine ! This program can calculate, with two approaches, the greatest binary gap of a positive integer.#{' ' *3}|"
    puts '-' * 126
    
    menu = Menu.new
    
    while (true)
      puts "|#{' ' * (126 - 1 - 1)}|"
      
      positive_integer = PositiveInteger.new
      
      menu.ask_for_choose_approache
      choose = menu.entries[:choose]
      break if choose.eql? '3'
      
      loop do
        menu.ask_for_integer_value
        break if positive_integer.update_value(menu.entries[:integer])
      end
      integer_value = positive_integer.value
      greatest_binary_gap = choose == '1' ? positive_integer.find_greatest_binary_gap : positive_integer.find_greatest_binary_gap_elegant_way
      puts  "|The greatest binary gap of #{integer_value} is #{greatest_binary_gap}."\
            "#{' ' * (126 - 27 - integer_value.to_s.size - greatest_binary_gap.to_s.size - 6 - 1)}|"
    end
    
    puts "|Bye !#{' ' * (126 - 6 - 1)}|"
  end
end
