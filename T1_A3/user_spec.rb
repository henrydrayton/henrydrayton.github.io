# require "./T1_A3/THE_UNDERDOG.rb"

Rspec.describe "Trivial testing" do
    it "should be able to add" do
        actual_result = 1+1
        expected_result = 2
        expect(actual_result).to eq expected_result
    end
end



# RSpec.describe User do
#     # it { is_expected.to respond_to :name }
#     # it { is_expected.to respond_to :save }
# end

# RSpec.describe shared do
#     it "has a balance of zero when first created" do
#       expect(shared.new.balance).to eq(score.new(0))
#     end
#   end

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


# change 

# respond
