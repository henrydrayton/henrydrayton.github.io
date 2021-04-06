# char.ord

require "timeout"

# questions = [
#   "What are the following datatypes in Ruby?",
#   "What will any variable evaluate to?",
#   "Ruby is a case-sensitive language."
# ]

results = [
    "1", "8", "10"
]

questions = [
  ["\nWhat are the following datatypes in Ruby?", [ "(1) Numbers", "(2)Boolean", "(3)String", "(4)All of the mentioned" ], "1" ],
  ["\nWhat will any variable evaluate to if it is a Boolean data type?", [ "(5)True", "(6)Nil", "(7)False", "(8)Either True of False" ], "8" ],
  ["\nRuby is a case-sensitive language.", [ "(9)True", "(10)False"], "10" ],
]

answers = questions.map do |question|
  puts question[0]
  question[1].each do |option|
    puts option
  end

  answer = nil
  begin
    Timeout::timeout 2 do
      answer = gets.chomp
    end
  rescue Timeout::Error => e
    puts "\nTime's up!"
    answer = nil
  ensure
    answer
  end
end

score = (answers + results)
score_final = score.uniq

matches = score.count - score_final.count


puts "Congratulations on completing the quiz! Your final score is #{matches}/10."

puts "Compare you answers\n YOUR ANSWERS: #{answers} \n CORRECT ANSWERS #{results}"



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