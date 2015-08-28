require 'tree'
require 'tree/binarytree'

def count_node(tree)
  return "count_node not yet implemented"
end

def find_min(tree, min = nil)
  return "find_min not yet implemented"
end

# create a new tree, with a root of 1
my_tree = Tree::BinaryTreeNode.new("1")

# put some stuff in the tree, namely:
# * 100
# |---+ 20
# |    |---+ 45
# |        +---> 800
# |    +---> 75
# +---+ 33
#     |---> 62
#     +---> -84

# test methods above
puts "What's in my tree?"
# my_tree.print_tree

puts "NODE COUNT = #{count_node(my_tree)}"
puts "SMALLEST ELEMENT = #{find_min(my_tree)}"
