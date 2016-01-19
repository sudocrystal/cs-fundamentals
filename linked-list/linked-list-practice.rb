require './List.rb'
require './test_list.rb'
require './Node.rb'

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
  #method to get things set up and wrap the recursive method
  head = list.head
  back = head
  head = head.next
  back.next = nil
  inner_rev(list, head, back)
end
#
def inner_rev(list, head, back)
  if head.next.nil?
    list.head = back
    return list
  else
    inner_rev(list, head.next, back)
  end
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(-1)
my_list.add(0)
my_list.add(10)


# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
puts "RECURSIVELY REVERSED LIST = #{recurserev(my_list)}"
