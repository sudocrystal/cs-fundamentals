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
  min = 0
  temp = list.head
  while !temp.next.nil?
    min = temp.data if temp.data < min
    temp = temp.next
  end
  return min
end

# forward iterative approach
def reverse2(list)
  if list.head.nil?
    return nil
  else
    prevNode = nil
    currNode = list.head
    nextNode = nil
    until currNode.nil? do
      nextNode = currNode.next
      currNode.next = prevNode
      prevNode = currNode
      currNode = nextNode
    end
    list.head = prevNode
    return list
  end
end

# backward recursive approach
def reverse3(list)
  if !(list.head.nil? || list.head.next.nil?)
    orig = list.head
    list.head = reverse4(list.head, list.head.next, list.head.next.next)
    orig.next = nil
  end
  return list
end

def reverse4(prev, curr, nextNode)
  curr.next = prev
  if(nextNode.nil?)
    return curr
  else
    return reverse4(curr, nextNode, nextNode.next)
  end
end

def reverse(list)
  temp = list.head
  count = count_node(list)
  back = temp
  temp = temp.next
  next_node = temp.next
  until next_node.next.nil? do
    temp.next = back
    back = temp
    next_node = next_node.next
    next_node.next = temp
    temp = next_node
  end
  list.head = next_node
  return list

end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(5)
my_list.add(4)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse2(my_list)}"
puts "REVERSED LIST = #{reverse3(my_list)}"
