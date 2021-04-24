require 'positive_integer'

describe PositiveInteger do
  before(:each) do
    @integer = PositiveInteger.new
    
  end

  describe "value_update?" do
    it "should not update the @value attribute if input is not valid" do
      @integer.value_updated? 0
      expect(@integer.value).to eq 1
    end
    
    it "should return false if input is not valid" do
      expect(@integer.value_updated? 0).to eq false
      expect(@integer.value_updated? -5).to eq false
    end

    it "should return true if input is valid" do
      expect(@integer.value_updated? 15).to eq true
      expect(@integer.value_updated? 225).to eq true
    end
  end

  describe "to_binary" do
    it "should correctly convert an integer to binary" do
      @integer.value_updated?('1001'.to_i(2))
      expect(@integer.send :to_binary).to eq '1001'
      @integer.value_updated?('1111'.to_i(2))
      expect(@integer.send :to_binary).to eq '1111'
    end
  end

  describe "to_binary_elegant_way" do
    it "should correctly convert an integer to binary" do
      @integer.value_updated? '1001'.to_i(2)
      expect(@integer.send :to_binary_elegant_way).to eq '1001'
      @integer.value_updated? '1111'.to_i(2)
      expect(@integer.send :to_binary_elegant_way).to eq '1111'
    end
  end

  describe "find_greatest_binary_gap" do
    it "should return a correct greatest binary gap of an integer" do
      expect(@integer.value_updated? '10001'.to_i(2))
      expect(@integer.find_greatest_binary_gap).to eq 3
      expect(@integer.value_updated? '110'.to_i(2))
      expect(@integer.find_greatest_binary_gap).to eq 0
      expect(@integer.value_updated? '1010'.to_i(2))
      expect(@integer.find_greatest_binary_gap).to eq 1
      expect(@integer.value_updated? '1111'.to_i(2))
      expect(@integer.find_greatest_binary_gap).to eq 0
    end
  end

  describe "find_greatest_binary_gap_elegant_way" do
    it "should return a correct greatest binary gap of an integer" do
      expect(@integer.value_updated? '10001'.to_i(2))
      expect(@integer.find_greatest_binary_gap_elegant_way).to eq 3
      expect(@integer.value_updated? '110'.to_i(2))
      expect(@integer.find_greatest_binary_gap_elegant_way).to eq 0
      expect(@integer.value_updated? '1010'.to_i(2))
      expect(@integer.find_greatest_binary_gap_elegant_way).to eq 1
      expect(@integer.value_updated? '1111'.to_i(2))
      expect(@integer.find_greatest_binary_gap_elegant_way).to eq 0
    end
  end
end
