require './List.rb'
require 'pry'

def count_node(list)
  if list.head.nil?
    return 0
  else
    count = 1
    temp = list.head
  end
  while temp.next != nil
    temp = temp.next
    count += 1
  end
  return count
end

def find_min(list)
  if list.head.nil?
    return "empty list"
  else
    min = list.head
    temp = list.head
  end
  while temp != nil
    if temp.data <= min.data
      min = temp
    end
    temp = temp.next
  end
  return min
end

def reverse(list)
  nextnode = list.head.next
  list.head.next = nil
  prev = list.head
  while nextnode.next != nil
    current = nextnode
    nextnode = current.next
    current.next = prev
    prev = current
  end
  nextnode.next = prev
  list.head = nextnode
  return list
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(7)
my_list.add(4)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
