require 'menu'

describe Menu do
  before :each do
    @menu = Menu.new
  end
  
  describe "ask_integer_value" do
    it "should update entries[:integer] attribut by user input" do
      allow($stdin).to receive(:gets).and_return '9'
      @menu.ask_for_integer_value
      expect(@menu.entries[:integer]).to eq 9
    end
  end
  
  describe "ask_for_choose_approach" do
    it "should update entries[:choice] attribut by user input" do
      allow($stdin).to receive(:gets).and_return '1'
      @menu.ask_for_choose_approach
      expect(@menu.entries[:choice]).to eq '1'
    end

    it "should ask again when user input is invalid and update entries[:choice] with a next valid user input" do
      allow($stdin).to receive(:gets).and_return '4', '2'
      expect{@menu.ask_for_choose_approach}.to output(
        "|1. First approach, see the PositiveInteger#find_greatest_binary_gap method.#{' ' * (134 - 76 - 1)}|\n" \
        "|2. Second approach, see the PositiveInteger#find_greatest_binary_gap_elegant_way method.#{' ' * (134 - 89 - 1)}|\n" \
        "|3. Quit.#{' ' * (134 - 9 - 1)}|\n" \
        "|You must choose between 1, 2 or 3 ! Try again please !#{' ' * (134 - 55 - 1)}|\n"
      ).to_stdout.and change {@menu.entries[:choice]}.to '2'
    end
  end
end
