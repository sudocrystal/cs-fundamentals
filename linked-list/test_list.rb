require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
x.add("c")
# x.add_at_index(0, "z") # [z][a][b][c]
# x.delete_at_index(1)
puts "contains method:" + x.contains?("a").to_s
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s
x.contains?("ddddd")
