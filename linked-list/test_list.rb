require './List.rb'
require './Node.rb'
require 'pry'
require './linked-list-practice.rb'

def test
  x = List.new
  puts "Is the list empty? " + x.empty?.to_s
  puts x.to_s
  x.add("a")
  x.add("b")
  x.add("c")
  x.add_at_index(0, "z") #add at index gives us zabc
  puts x.to_s
  data = "d"
  puts "Does this list contain #{data}? " + x.contains?(data).to_s
  x.delete_at_index(0)
  puts x.to_s
  puts "Is the list empty? " + x.empty?.to_s
  count_node(x)
  x.add("d")
  x.add("e")
  x.add("f")
  x.add("g")
  puts x.to_s
  puts "To string recursively: " + x.head.to_s_recursive
  puts "Starting at second item, to string recursively: " + x.head.next.to_s_recursive
  puts "Print reverse list recursively " + x.head.to_s_reverse_recurse
  return "<3"
end
