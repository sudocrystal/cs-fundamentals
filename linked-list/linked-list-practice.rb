require './List.rb'
require './test_list.rb'
require './Node.rb'
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
  temp = list.head
  i = temp.data
  while !temp.next.nil?
    if temp.data < i
      i = temp.data
    end
    temp = temp.next
  end
  return i
end

def reverse(list)
  #first is a unique case. get variables in place.
  head = list.head
  reverse = head
  head = head.next
  reverse.next = nil
  while !head.nil?
    #iterate through making new heads for reverse list as you go
    temp = head
    head = head.next
    temp.next = reverse
    reverse = temp
  end
  list.head = reverse
  return list
end

def recurserev(list)
  temp = list.head
  #go to end of the list
  while !temp.next.nil?
    temp = temp.next
  end
  head = Node.new(temp.data, recurserev(list))
  return list
end




# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(-1)
my_list.add(3)
my_list.add(10)


# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"

# create a new linked list
my_next_list = List.new

# put some stuff in the list
my_next_list.add(2)
my_next_list.add(0)
my_next_list.add(6)
my_next_list.add(-1)
my_next_list.add(3)
my_next_list.add(10)

puts "What's in my next list?"
puts my_next_list
puts "RECURSIVELY REVERSED LIST = #{recurserev(my_next_list)}"
