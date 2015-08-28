require 'tree'
require 'tree/binarytree'

def count_node(tree)
  #return "count_node not yet implemented"
  return 0 if tree.nil?
  return 1 + count_node(tree.left_child) + count_node(tree.right_child)
end

def find_min(tree, min = nil)
  return "find_min not yet implemented"
end

# create a new tree, with a root of 1
my_tree = Tree::BinaryTreeNode.new("100")
my_tree.left_child = Tree::BinaryTreeNode.new("20")
my_tree.right_child = Tree::BinaryTreeNode.new("33")
my_tree.left_child.left_child = Tree::BinaryTreeNode.new("45")
my_tree.left_child.right_child = Tree::BinaryTreeNode.new("75")
my_tree.right_child.left_child = Tree::BinaryTreeNode.new("62")
my_tree.right_child.right_child = Tree::BinaryTreeNode.new("-84")
my_tree.left_child.left_child.left_child = Tree::BinaryTreeNode.new("800")

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
