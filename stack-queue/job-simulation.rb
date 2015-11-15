require './Stack'
require './Queue'

# 6 hiring positions
# The first 6 people on the waiting list will be hired in the order they are on the list (queue)
# After 3 months, dice roll will determine how many people will be fired (stack = last hired, first fired)
# People fired will go back on the waiting list

people = ["Jessica", "Riley", "Annalee", "Sarah T", "Katherine", "Risha", "Sarah K", "Audrey", "Brittany", "Kelly", "Logan", "Ricky", "Claire", "Amy", "Daphne", "Desiree", "Becca", "Tammy", "Jenna"]
#  "Emily", "Meighan", "Hailey", "Jennie"]

# Create a new waiting list and hired list
@waiting_list = Queue.new(20)
@hired = Stack.new(6)
continue = true

# Creating the waiting list queue
people.each do |person|
  @waiting_list.enqueue(person)
end

def hire
  # until the hired list is full, add a person from the waiting_list to the hired list
  until @hired.full?
    person = @waiting_list.dequeue
    @hired.push(person)
  end
end

def fire
  @fired = []
  # Generate a random number between 1 and 6
  @dice_roll = rand(1..6)
  # Fire X number of people and add them back to the waiting list
  @dice_roll.times do |i|
    to_be_fired = @hired.look
    @waiting_list.enqueue(to_be_fired)
    @fired.push(to_be_fired)
    @hired.pop
  end
end

# Take user input for simulating subsequent months
until continue == false
  puts "Would you like to simulate a month?"
  response = gets.chomp
  if ['yes', 'y'].include? response
    puts "It is the beginning of the month. You hired: "
    hire
    puts @hired.store
    fire
    puts "It is the end of the month. You rolled the dice and need to fire #{@dice_roll} people."
    puts "You fired: "
    puts @fired
  else
    continue = false
  end
end
