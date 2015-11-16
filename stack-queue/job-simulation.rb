require './Stack'
require './Queue'

# A company has six hiring positions with more people wanting jobs than the number of available positions. The company managers decide in order to give more people an opportunity to make money; they will allow people to work in three-month intervals. The first five people on the waiting list will be hired in the order that they are on the waiting list. The first six people will keep these positions for three months. At the end of three months, the manager will roll a dice to determine the number of people who will lose their jobs. The company will use the policy of last-hired-first-fired. For example, if the dice roll is 3, the last 3 people hired will lose their jobs to the first 3 people on the waiting list. People losing their jobs will be placed on the back of the waiting list in the order that they are fired. This process will continue for every three-month interval.

# I wrote this all out before I actually looked at this file and realized you wanted us to use the classes 
# created by RubyMonk and not just normal array classes. I will do my best to get back to this and rewrite it, 
# but in case I don't have time before you look at it, here is the work I did.

class Worker
end

class WaitingList
#Queue
end

class Die
	attr_reader :roll
	def initialize
		@roll = rand(1..6)
	end
end

class FilledPosition
# Stack
end


if @time == nil
	@time = 0
	waitinglist = []
	10.times {waitinglist.push(Worker.new)}
	hired = waitinglist.slice!(0..5)
	positions = hired
end
if @time == 3
	roll = Die.new.roll
	fired = []
	roll.times {fired.push(positions.shift)}
	waitinglist += fired
	hired = waitinglist.slice!(0..(roll - 1))
	hired.each {|worker| positions.insert(0, worker)}
else
	@time += 1
end



