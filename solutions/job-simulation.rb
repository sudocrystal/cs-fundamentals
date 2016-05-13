require './Stack.rb'
require './Queue.rb'

class JobSim
  attr_reader :waiting, :workers

  # initializes the number of workers and number of people waiting
  def initialize(num_workers=6, num_waiting=10)
    raise ArgumentError.new("Number of workers must be <= to num waiting") if num_workers > num_waiting
    @waiting = Queue.new
    num_waiting.times do |i|
      @waiting.enqueue("P#{i+1}")
    end
    @workers = Stack.new
    num_workers.times do
      @workers.push(@waiting.dequeue)
    end
  end

  def cycle
    dice = rand(6) + 1 #roll a dice on how many will get fired
    dice.times do
      fired = @workers.pop
      puts "FIRE:\t#{fired}"
      @waiting.enqueue(fired)
    end
    puts "--------------------"
    dice.times do
      hired = @waiting.dequeue
      puts "HIRE:\t#{hired}"
      @workers.push(hired)
    end
  end
end

######### TESTING ####################
simulation = JobSim.new(6,10)
puts "INITAL SETUP"
puts "Workers: #{simulation.workers.to_s}"
puts "Waitlist: #{simulation.waiting.to_s}"

print "\nFire/Hire? (Y/n) > "
cycle = gets.chomp.downcase[0]
while cycle == 'y' || cycle == nil
  simulation.cycle
  puts "\nWorkers: #{simulation.workers.to_s}"
  puts "Waitlist: #{simulation.waiting.to_s}"

  print "\nFire/Hire? (y/n) > "
  cycle = gets.chomp.downcase[0]
end
