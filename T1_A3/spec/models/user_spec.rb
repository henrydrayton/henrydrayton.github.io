

require 'rspec'
require '../T1_A3/src/THE_UNDERDOG'

# -------- Testing the plane animation runs
# RSpec.describe Answer do
#     it 'should equal nil' do
#         test_two = 
#         # expect(Answer()).to eq nil
#         expect(answer).to be_nil
#     end
# end
RSpec.describe Answer do
    it "has a balance of zero when first created" do
      expect(Answer.new.balance).to eq(Score.new(0))
    end
  end


# RSpec.describe "Shared Variable" do
#     subject { Answer.new }

#     it "Should tell the user their score out of ten" do
#         expect(answer).to respond_to :name
#     end
# end


    # it { is_expected.to respond_to :answers }
    # it { is_expected.to respond_to :results }
    # it { is_expected.not_to be_admin }


#     describe "#name" do
#         subject { User.new.name }
#         it { is_expected.not_to be_nil }
#         it { is_expected.to match /anonymous/i }
#     end
# end

# RSpec.describe "User" do
#     subject { User.new }

#     it "should respond to name" do
#         expect(subject).to respond_to :name
#     end

#     it "should respond to save" do
#         expect(subject).to respond_to :save
#     end

#     describe "#save" do
#         it "should increase the length of Users by 1" do
#             expect { subject.save }.to change { User.all.length }.by 1
#         end
#     end

#     describe "#name" do
#         subject { (User.new "Adam").name }

#         it "should not be nil" do
#             expect(subject).not_to be_nil
#         end

#         it "should be assigned on initilisation if provided" do
#             expect(subject).to eq "Adam"
#         end
#     end


# end

# RSpec.describe "Trivial testing" do
#     it "should able to add 1 and 1" do
#         actual_result = 1+1
#         expected_result = 2
#         expect(actual_result).to eq expected_result
#     end
# end

#     it "should not be equal to 3" do
#         actual_result = 1+1
#         expected_result = 3
#         expect(actual_result).to be < expected_result
#     end
# end