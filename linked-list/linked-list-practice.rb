require './List.rb'
require './Node.rb'
require 'pry'

def count_node(list)
  temp = list.head
  count = 0
  while !temp.nil?
    count += 1
    temp = temp.next
  end
  return count
end

def find_min(list)
  temp = list.head
  min = temp
  if list.head.nil?
    return nil
  else
    temp = temp.next
    while !temp.nil?
      min = temp if temp.data < min.data
      temp = temp.next
    end
    return min
  end
end

def reverse(list)
  # head will become the tail
  # return a new list that is reversed, or change the current one
  current = list.head
  previous = nil        # the value that the present head will be set to (head.next)
  while !current.nil?   # while we are on a node
    following = current.next  # store this value for later since we're going to change current.next
    current.next = previous   # change where the current node is pointing (to the previous node)
    previous = current        # update what 'previous' should mean for the next iteration
    current = following       # move to the next node
  end
  list.head = previous  # reassign the head of the list to the final node (can't do current because current is nil)
  return list
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(1)
my_list.add(2)
my_list.add(3)
my_list.add(4)
my_list.add(5)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
