require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
x.add("x")
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s

# How do I test it ?
# puts x.add_at_index("b", "2")
