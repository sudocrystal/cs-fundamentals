require './List.rb'

def count_node(list)
  # return "count_node not yet implemented"
  list.size
end

def find_min(list)
  # return "find_min not yet implemented"
  temp = list.head

  if list.empty?
    return nil
  else
    min = temp.data
    until temp.next.nil?
      temp = temp.next
      min = temp.data if temp.data < min
    end
  end

  return min
end

def reverse(list)
  # return "reverse not yet implemented"
  # return the same list that is reversed (or a different list, if you want)
  return nil if list.size < 2

  count = list.size - 1
  reverse = List.new

  until count < 0
    temp = list.head

    count.times do
      temp = temp.next
    end

    if temp.next.nil?
      reverse.head = temp.dup
      alt = reverse.head
    else
      alt.next = temp.dup
      alt = alt.next
    end

    count -= 1
  end

  alt.next = nil

  return reverse
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
