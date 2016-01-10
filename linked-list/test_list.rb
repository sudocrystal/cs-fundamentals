require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s
x.contains?("d")
x.add_at_index(2, "hi")
puts x.to_s
x.add("g")
puts x.to_s
x.add_at_index(0, "nada")
puts x.to_s
x.add_at_index(100, "whoops")
x.delete_at_index(3)
puts x.to_s
x.delete_at_index(100)
puts x.to_s
x.delete_at_index(0)
puts x.to_s
x.delete_at_index(2)
puts x.to_s
