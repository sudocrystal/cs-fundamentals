require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s
x.add("b")
puts x.to_s
puts x.contains?("y")