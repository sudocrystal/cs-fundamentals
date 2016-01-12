require './List.rb'
require 'pry'
#Homework

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
  if list.empty?
    return nil
  else
    temp = list.head
    min = 0
    while !temp.nil?
      if temp.data < min
        min = temp.data
      end
      temp = temp.next
    end
    return min
  end
end

# first implementation using array
# def reverse(list)
#   reverse_list = List.new
#   array = Array.new
#   temp = list.head
#   while !temp.nil?
#     array << temp.data
#     temp = temp.next
#   end
#   array.reverse.each do |data|
#     reverse_list.add(data)
#   end
#   return reverse_list
# end

# second implementation without using array
def reverse(list)
  if count_node(list) == 0
    return nil
  elsif count_node(list) == 1
    return list
  else
    temp1 = nil
    temp2 = list.head
    while !temp2.nil?
      temp3 = temp2.next
      temp2.next = temp1
      temp1 = temp2
      temp2 = temp3
    end
    list.head = temp1
    return list
  end
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(-7)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
