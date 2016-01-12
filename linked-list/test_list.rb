require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
x.add("c")
x.add_at_index(1,"z") # [z][a][b][c]
puts x.to_s

x.delete_at_index(1) # [z][b][c]
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
puts "Does the list contain 'y'? " + x.contains?('y').to_s
puts "Does the list contain 'c'? " + x.contains?('c').to_s
