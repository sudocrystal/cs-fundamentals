require './List.rb'
require 'pry'

def count_node(list)
  temp = list.head
  return "empty list" if temp == nil
  i = 0
  while temp != nil
    i += 1
    temp = temp.next
  end
  return i
end

def find_min(list)
  temp = list.head
  return "empty list" if temp == nil
  min = temp.data
  while temp.next!= nil
    min = temp.next.data if temp.next.data < min
    temp = temp.next
  end
  return min
end


# def reverse(list)
#   return nil if list.nil?
#   return list if list.head.next == nil
#   if list.head.next.next.nil?
#     list.head.next = list.head
#     list.head = nil
#     return list
#   end
#   _end = false
#  prev = list.head
#  current = prev.next
#  _next = current.next
#  while !_end
#    current.next = prev
#    if _next.next.nil?
#      _next.next = current
#      list.head.next = nil
#      list.head = _next
#      _end = true
#    else
#      prev = current
#      current = _next
#      _next = current.next
#    end
#  end
#  return list
# end

# def swap(first_node, seconde_node)
#   if seconde_node.next.nil?
#     self.head = seconde_node
#     return first_node
#   end
#   self.seconde_node.next = self.swap(first_node.next, seconde_node.next)
#   return self
# end
#
# def recursive_reverse
#   return nil if self.nil?
#   return self if self.head.next.nil?
#   return self.swap(list.head, list.head.next)
#
# end


# def reverse(list)
#   return list.head if list.head.next == nil
#   array = save_head(list)
#   reverse(node.next).a[]
#   list.head = list.head.next
#   reverse(remove_head(list)).next = reverse(remove_head(list))
#   return list
# end



# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
# my_list.add(10)
# my_list.add(2)
# my_list.add(-4)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
# puts "REVERSED LIST = #{reverse(my_list)}"
puts "Recursive reverse = #{my_list.recursive_reverse}"
