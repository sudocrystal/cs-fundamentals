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
  return nil if list.empty? 

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

def reverse(list)
  
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(1)
my_list.add(10)
my_list.add(-1)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
