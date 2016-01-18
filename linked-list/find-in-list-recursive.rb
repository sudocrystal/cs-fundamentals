require './List.rb'
require './Node.rb'

def find_in_list(list, num)
  find_in_nodes(list.head, num)
end

def find_in_nodes(node, num)


  # base case if node has the desired data or if you reach the end of the list
  if node.nil? || node.data == num
    return node
  end

  return find_in_nodes(node.next, num)
end


my_list = List.new

# put some stuff in the list
my_list.add(1)
my_list.add(2)
my_list.add(3)
my_list.add(4)
my_list.add(5)

puts "list: #{my_list}"
puts "4? #{find_in_list(my_list, 4)}"
puts "6? #{find_in_list(my_list, 6)}"
