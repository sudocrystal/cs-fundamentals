require './List.rb'
require './Node.rb'

def reverse_recursive(list)
  list.head = reverse_nodes(nil, list.head)
  return list
end

def reverse_nodes(previous, node)
  if node.nil?
    return previous
  end
  last = reverse_nodes(node, node.next)
  node.next = previous
  return last
end


# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(1)
my_list.add(2)
my_list.add(3)
my_list.add(4)
my_list.add(5)

puts "my list: #{my_list}"
puts "reversed list: #{reverse_recursive(my_list)}"
