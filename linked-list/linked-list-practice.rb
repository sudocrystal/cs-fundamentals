require './List.rb'

def count_node(list)
  # count the number of nodes, can do it internally (as you add or delete update the number)
  # alternatively, can traverse through entire list (less efficient)
  return list.count
end

def find_min(list)
  # assume head node is the smallest, traverse through list and if you find anything smaller, keep track of that as the new smallest
  temp = list.head
  if temp.nil?
    return "N/A (List is empty)"
  else
    min = temp
    while temp.next != nil
      temp = temp.next
      min = temp if temp.data < min.data
    end
  end
  return min
end

def reverse(list)
  start_node = list.head
  return "List has no nodes!" if start_node.nil?
  next_node = start_node.next
  return list if next_node.nil?
  next_next_node = next_node.next

  while next_next_node != nil
    start_node.next = next_next_node
    next_node.next = list.head #start_node

    list.head = next_node
    next_node = start_node.next
    next_next_node = next_node.next
  end

  next_node.next = list.head
  list.head = next_node
  start_node.next = nil

  return list
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
