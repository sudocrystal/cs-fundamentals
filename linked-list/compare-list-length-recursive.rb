require './List.rb'
require './Node.rb'

def equal_length?(list1, list2)
  return compare_nodes(list1.head, list2.head)
end

def compare_nodes(node1, node2)
  if node1.nil? || node2.nil?
    if node1.nil? && node2.nil?
      return true
    else
      return false
    end
  end

  return compare_nodes(node1.next, node2.next)
end


my_list = List.new

# put some stuff in the list
my_list.add(1)
my_list.add(2)
my_list.add(3)
my_list.add(4)
my_list.add(5)

my_other_list = List.new

my_other_list.add(1)
my_other_list.add(2)
my_other_list.add(3)


puts "list 1: #{my_list}"
puts "list 2: #{my_other_list}"

puts "equal length?: #{equal_length?(my_list, my_other_list)}"
