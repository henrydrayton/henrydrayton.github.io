
require 'timers'
def initialize (timer)
timers = Timers::Group.new
every_twenty_seconds = timers.every(5) { puts "Time's up! Next question" }
	@total = 2.0
	@current = nil
end

loop { timers.wait }
end
