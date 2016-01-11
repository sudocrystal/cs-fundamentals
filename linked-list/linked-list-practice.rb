require './List.rb'

def count_node(list)
  count = 0
  temp = list.head
  while !temp.nil?
    count += 1
    temp = temp.next
  end
  return count
end

def find_min(list)
  temp = list.head
  min = temp.data
  until temp.nil?
    min = temp.data if temp.data < min
    temp = temp.next
  end
  return min
end

def reverse(list)
  size = count_node(list)
  return list if size == 0 || size == 1
  temp = list.head
  next_node = temp.next
  next_node

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
