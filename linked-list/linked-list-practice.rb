require './List.rb'

def count_node(list)
  count = 0
  temp = list.head
  while !temp.nil?
    temp = temp.next
    count += 1
  end
  return count
end

def find_min(list)
  length = count_node(list)
  temp = list.head
  min = Float::INFINITY
  length.times do
    min = temp.data if temp.data < min
    temp = temp.next
  end
  return min
end

def reverse(list)
  length = count_node(list)
  temp = list.head
  reversed = List.new

  if length == 0 || length == 1
    return list
  end

  while length > 0
    # set temp equal to the last node
    (length - 1).times do
      temp = temp.next
    end
    # add the last node to the reversed list
    reversed.add(temp.data)
    # reset temp to the original list's head
    temp = list.head
    # descrease the length by one
    length -= 1
  end

  return reversed
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(10)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
