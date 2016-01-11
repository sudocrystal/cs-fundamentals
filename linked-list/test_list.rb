require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
# x.add("b") # this doesn't work right now; it should be at the end of the list
# x.add("c")
# x.add("d")
# x.add("e")
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s

puts x.contains?("a")
