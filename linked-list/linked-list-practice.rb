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
  # reversing a list. much harder (head becomes tail)
  length = count_node(list)
  temp = list.head

  if length == 0 || length == 1
    return list
  end

  # recurse?

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
