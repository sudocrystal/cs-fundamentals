require 'RubyDataStructures'

def print_list(list)
#  puts "print_list not yet implemented\n\n"
  temp = list.head
  puts temp.key
  while temp.next != list.head
    temp = temp.next
    puts temp.key
  end
end

def count_node(list)
#  return "count_node not yet implemented"
  temp = list.head
  count = 0
  while temp.next != list.head
    temp = temp.next
    count += 1
  end
  return count
end

def find_min(list)
#  return "find_min not yet implemented"
  temp = list.head
  min = temp.key
  while temp.next != list.head
    if temp.key < min
      min = temp.key
    end
    temp = temp.next
  end
  return min
end

# create a new linked list
my_list = RubyDataStructures::SinglyLinkedList.new

# put some stuff in the list
my_list.insert(2)
my_list.insert(0)
my_list.insert(6)
my_list.insert(-201)
my_list.insert(29)
my_list.insert(-111)

# test methods above
puts "What's in my list?"
print_list(my_list)

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
