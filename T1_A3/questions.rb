
require 'tty-font'

font = TTY::Font.new(:doom)
puts font.write("THE UNDERDOG")

puts "Hello and welcome to THE UNDERDOG a game to test your Ruby general knowledge and improve your Kahoot skills!
\nThe quiz consists of 10 multiple-choice questions with your total score being presented at the end.
\nYou have 15-seconds to answer each question so be quick!
\nAnswer each question by entering the number that corresponds to your answer.
\nLet’s beat those know-it-alls!\n" 

require "tty-prompt"

prompt = TTY::Prompt.new

prompt.keypress("\nPress any key to begin...")

require 'ruby2d'

class KahootMusic
    
song = Music.new('kahoot_music.mp3')

# Play the music
song.loop = true
song.play

end


require "timeout"

results = [
    4, 8, 9, 11, 13, 18, 19, 23, 25, 30
]

questions = [
  ["\nWhat are the following datatypes in Ruby?", [ "(1) Numbers", "(2)Boolean", "(3)String", "(4)All of the mentioned" ]],
  ["\nWhat will any variable evaluate to if it is a Boolean data type?", [ "(5)True", "(6)Nil", "(7)False", "(8)Either True of False" ]],
  ["\nRuby is a case-sensitive language.", [ "(9)True", "(10)False"]],
  ["\nRuby can deal with both numbers and floating point values.", [ "(11)True", "(12)False"]],
  ["\nRuby is an object oriented general purpose programming language.", [ "(13)True", "(14)False"]],
  ["\nWhat error does the if condition gives if not terminated with end statement?", [ "(15)Syntax error", "(16)Unexpected end", "(17)Expecting keyword end", "(18)All of the above"]],
  ["\nWhat does the .upcase method do?", [ "(19)Convert the string to uppercase", "(20)Convert only lowercase string to uppercase and vice-versa", "(21)Convert the string to lowercase", "(22)None of the above"]],
  ["\nMethods should not be written inside double quotes.", [ "(23)True", "(24)False"]],
  ["\nWhich of the following is valid conditional statement?", [ "(25)else", "(26)els", "(27)if else", "(28)None of the above"]],
  ["\nWhat will the following expression evaluate to? true && false", [ "(29)True", "(30)False", "(31)Error", "(32)None of the above"]],
  
]

quotes =[
"\nWinston Churchill said, “The empires of the future are the empires of the mind.”",
"\nTom Peters said, “Heavy lifting is out; brains are in.”",
"\nTransformation happens one darn person at a time.",
"\n“Any fool can know. The point is to understand.”― Albert Einstein",
"\n“I did then what I knew how to do. Now that I know better, I do better.” ― Maya Angelou",
"\n“Great minds are always feared by lesser minds.” ― Dan Brown, The Lost Symbol",
"\nKnowledge, like air, is vital to life. Like air, no one should be denied it.” ― Alan Moore, V for Vendetta",
"\n“Beware of the man who works hard to learn something, learns it, and finds himself no wiser than before.” ― Kurt Vonnegut, Cat's Cradle",
"\n“An investment in knowledge always pays the best interest.” ― Benjamin Franklin",
"\n“A little Learning is a dangerous Thing.” ― Alexander Pope"
]


answers = questions.map.with_index do |question, i|
    puts quotes[i]
    puts question[0]
  question[1].each do |option|
    puts option
  end

  answer = nil
  begin
    Timeout::timeout 15 do
      answer = gets.chomp.to_i
end
  rescue Timeout::Error => e
    puts "\nTime's up!"
    answer = nil
  ensure
    answer
  end
end

shared = answers & results.to_a


puts "\nCongratulations on completing the quiz! Your final score is #{shared.length}/10.\n"

puts "\nCompare you answers\n YOUR ANSWERS: #{answers} \n CORRECT ANSWERS #{results}"



