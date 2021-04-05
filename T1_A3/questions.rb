require 'tty-font'

font = TTY::Font.new(:doom)
puts font.write("THE UNDERDOG")

puts "Hello and welcome to THE UNDERDOG a game to test your Ruby general knowledge and improve your Kahoot skills!
\nThe quiz consists of 10 multiple-choice questions with your total score being presented at the end.
\nYou have 15-seconds to answer each question so be quick!
\nAnswer each question by entering the letter that corresponds to your answer.
\nLet’s beat those smartie pants!\n" 

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

class Question 
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
         @prompt = prompt
         @answer = answer
         
    end
end



p1 = "\nWhich of the following datatypes are valid in Ruby?\n(a)Numbers\n(b)Boolean\n(c)String\n(d)All of the mentioned"
p2 = "What will any variable evaluate to if it is a Boolean data type??\n(a)True\n(b)Nil\n(c)False\n(d)Either True of False"
p3 = "Ruby is a case-sensitive language.\n(a)True\n(b)False"
p4 = "Ruby can deal with both numbers and floating point values.\n(a)True\n(b)False"
p5 = "Ruby is an object oriented general purpose programming language.\n(a)True\n(b)False"
p6 = "What error does the if condition gives if not terminated with end statement?\n(a)Syntax error\n(b)Unexpected end\n(c)Expecting keyword end\n(d)All of the above"
p7 = "What does the .upcase method do?\n(a)Convert the string to uppercase\n(b)Convert only lowercase string to uppercase and vice-versa\(c)Convert the string to lowercase\n(d)None of the above"
p8 = "Methods should not be written inside double quotes.\n(a)True\n(b)False"
p9 = "Which of the following is valid conditional statement?\n(a)else\n(b)els\n(c)if else\n(d)None of the above"
p10 = "What will the following expression evaluate to? true && false\n(a)True\n(b)False\n(c)Error\n(d)None of the above"

questions = [
    Question.new(p1, "d"),
    Question.new(p2, "d"),
    Question.new(p3, "a"),
    Question.new(p4, "a"),
    Question.new(p5, "a"),
    Question.new(p6, "d"),
    Question.new(p7, "a"),
    Question.new(p8, "a"),
    Question.new(p9, "a"),
    Question.new(p10, "b")
]

def run_quiz(questions)
    answer = ""
    score = 0
    for question in questions
         puts question.prompt
         answer = gets.chomp()
         if answer == question.answer
              score += 1
         end
         
    end
    puts "you got #{score} out of #{questions.length()}"

end

run_quiz(questions)
# load './timer.rb'
