require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
x.add("c")
x.add("d")
x.add("e")

puts "Does the list contain 'c'?" + x.contains?("c").to_s

puts x.to_s
puts "Is the list empty? " + x.empty?.to_s
