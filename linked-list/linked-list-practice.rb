require './List.rb'

def count_node(list)
  return "count_node not yet implemented"
end

def find_min(list)
  return "find_min not yet implemented"
end

def reverse(list)
  return "reverse not yet implemented"
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
