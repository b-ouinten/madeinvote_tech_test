require 'application'

describe Application do
  describe "perform" do
    before :each do
      @application = Application.new
    end
    
    it "should return the correct binary conversion then quit application when user enters with a valid entries" do
      allow($stdin).to receive(:gets).and_return '2', '1111'.to_i(2).to_s, '3'
      expect{ @application.perform }.to output(
        "#{'-' * 134}\n" \
        "|#{' ' * 3}Hello ! Are you fine ! This program can calculate, with two approachs, the greatest binary gap of a strictly positive integer.#{' ' * 3}|\n" \
        "#{'-' * 134}\n" \
        "|#{' ' * (134 - 1 - 1)}|\n" \
        "|1. First approach, see the PositiveInteger#find_greatest_binary_gap method.#{' ' * (134 - 76 - 1)}|\n" \
        "|2. Second approach, see the PositiveInteger#find_greatest_binary_gap_elegant_way method.#{' ' * (134 - 89 - 1)}|\n" \
        "|3. Quit.#{' ' * (134 - 9 - 1)}|\n" \
        "|Enter a strictly positive integer !#{' ' * (134 - 36 -1)}|\n" \
        "|The greatest binary gap of #{'1111'.to_i(2).to_s} is 0." \
        "#{' ' * (134 - 27 - '1111'.to_i(2).to_s.size - 1 - 6 - 1)}|\n" \
        "|#{' ' * (134 - 1 - 1)}|\n" \
        "|1. First approach, see the PositiveInteger#find_greatest_binary_gap method.#{' ' * (134 - 76 - 1)}|\n" \
        "|2. Second approach, see the PositiveInteger#find_greatest_binary_gap_elegant_way method.#{' ' * (134 - 89 - 1)}|\n" \
        "|3. Quit.#{' ' * (134 - 9 - 1)}|\n" \
        "|Bye !#{' ' * (134 - 6 - 1)}|\n"
      ).to_stdout
    end
    
    it "should quit application when user chooses 3 from the menu" do
      allow($stdin).to receive(:gets).and_return '3'
      expect(@application.perform).to eq nil
    end
  end
end
