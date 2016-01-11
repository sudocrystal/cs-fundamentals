require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
x.add("c")
x.add_at_index(0,"z") # should look like [z][a][b][c]
x.delete_at_index(1) # should look like [z][b][c]
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s
puts "Does the list contain a? " + x.contains?("a").to_s
puts "Does the list contain z? " + x.contains?("z").to_s
