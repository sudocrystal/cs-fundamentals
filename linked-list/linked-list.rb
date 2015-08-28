require 'RubyDataStructures'

def print_list(list)
  puts "print_list not yet implemented\n\n"
end

def count_node(list)
  return "count_node not yet implemented"
end

def find_min(list)
  return "find_min not yet implemented"
end

# create a new linked list
my_list = RubyDataStructures::SinglyLinkedList.new

# put some stuff in the list
my_list.insert(2)
my_list.insert(0)
my_list.insert(6)

# test methods above
puts "What's in my list?"
print_list(my_list)

puts "NODE COUNT = " + count_node(my_list)
puts "SMALLEST ELEMENT = " + find_min(my_list)
