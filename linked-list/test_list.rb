require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s

puts x.contains?("a")
