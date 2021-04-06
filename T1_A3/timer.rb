# char.ord

require "timeout"

questions = [
  "What are the following datatypes in Ruby?",
  "What will any variable evaluate to?",
  "Ruby is a case-sensitive language."
]

# questions = [
#   ["test", [ "option 1", "option 2", "option 3" ], 2 ],
# ]

answers = questions.map do |question|
  puts question

  answer = nil
  begin
    Timeout::timeout 5 do
      answer = gets.chomp
    end
  rescue Timeout::Error => e
    answer = nil
  ensure
    answer
  end
end

p answers

# puts "How are you?"
# begin
#   Timeout::timeout 5 do
#     ans = gets.chomp
#   end
# rescue Timeout::Error => e
#   p e
#   ans = nil
# end
# puts (ans || "User did not respond")