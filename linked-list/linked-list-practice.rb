require './List.rb'
require 'pry'

def count_node(list)
 temp = list.head
 i = 0
 while !temp.nil?
   temp = temp.next
   i += 1
 end
 return i
end

def find_min(list)
  #need to go through the entire list
  #if i find a smaller data, make that the minimum data  i know
  #if the list is empty then return nil
 if list.head == nil
   return nil
 end
 min = list.head.data
 temp = list.head
 while temp != nil
   if temp.data < min
     min = temp.data
   end
   temp = temp.next
 end
 return min
end

def reverse(list)
  current = list.head
  next_node = current.next
  previous = nil

  while current != nil
    # reverse the connection
    current.next = previous

    # move the pointers over
    previous = current
    current = next_node
    next_node = current.next if !current.nil?
  end
  # reset head
  list.head = previous
  list
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
