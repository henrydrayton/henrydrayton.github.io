require "./models/User"

RSpec.describe "Trivial Testing" do
    it "should be able to add" do
        actual_result = 1+1
        expected_result = 2
        expect(actual_result).to eq expected_result
    end
end