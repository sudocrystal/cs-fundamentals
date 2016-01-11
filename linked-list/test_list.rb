require './List.rb'
require './Node.rb'
require 'pry'

def test
  x = List.new
  puts "Is the list empty? " + x.empty?.to_s
  puts x.to_s
  x.add("a")
  x.add("b")
  x.add("c")
  x.add_at_index(0, "z") #add at index gives us zabc
  data = "d"
  puts "Does this list contain #{data}? " + x.contains?(data).to_s
  x.delete_at_index(1) #gives us zbc #contains is required
  puts x.to_s
  puts "Is the list empty? " + x.empty?.to_s
end
