require './List.rb'
require 'pry'

def count_node(list)
  node = list.head
  count = 0
  while node != nil
    count += 1
    node = node.next
  end
  return count
end

def find_min(list)
  if list.head == nil
    puts "there is nothing in this list"
    return 0
  end
  node = list.head
  min = node.data
  until node == list.tail
    node = node.next
    if min > node.data
      min = node.data
    end
  end
  return min
end

def reverse(list)
  #start traversing at the beginning
  node = list.head
  #case for the first item in the list: it will become the last and point to nil
  previous = nil
  #until the end
  until node == nil
    #save the next node
    subsequent = node.next
    #set the link to the next node to be the node that came before
    node.next = previous
    #save the current node to be the previous variable
    previous = node
    #reset the current node to traverse the list
    node = subsequent
  end
  #swap the head and tail variables
  new_head = list.tail
  list.tail = list.head
  list.head = new_head
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
