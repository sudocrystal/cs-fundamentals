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
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s

puts "Does it contain a? #{x.contains?("a")}"
puts "Does it contain e? #{x.contains?("e")}"
puts "Does it contain f? #{x.contains?("f")}"

x.add_at_index(5, "f")
puts x.to_s

x.delete_at_index(6)
puts x.to_s
