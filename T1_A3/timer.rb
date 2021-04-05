class Countdown
require 'timers'

timers = Timers::Group.new

every_five_seconds = timers.every(5) { puts "Another 5 seconds" }

loop { timers.wait }
end