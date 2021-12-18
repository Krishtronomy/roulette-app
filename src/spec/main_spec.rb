require_relative '../methods.rb'


describe 'total_spent' do
    it "Prints out the total credit the user has spent" do
        expect(total_spent([1,1,1],[1], 50)).to eq(20)
    end
end



describe "number_validator" do
    it "Should raise an ArgumentError error if incorrect number passed" do
      expect{num_validator(50)}.to raise_error(ArgumentError)
    end
  end


  describe "validate_name" do
    it "Should raise an Invalid name error if empty string is passed" do
      expect{validate_name('')}.to raise_error(InvalidNameError)
    end
  end

