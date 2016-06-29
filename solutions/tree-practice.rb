class TreeNode
   attr_accessor :value, :left, :right

   def initialize(val)
     @value = val
     @left = nil
     @right = nil
   end
end

def print_infix(node)
  return if node == nil
  print_infix(node.left)
  print node.value + " "
  print_infix(node.right)
end

# 1
def operators(node)
  return if node == nil
  operators(node.left)
  if node.left != nil || node.right != nil
    print node.value + " "
  end
  operators(node.right)
end

# 2
def count_leaves(node)
  return if node == nil
  if node.left == nil && node.right == nil
    return 1
  else
    return count_leaves(node.left) + count_leaves(node.right)
  end
end

# 3
def print_prefix(node)
  return if node == nil
  print node.value + " "
  print_prefix(node.left)
  print_prefix(node.right)
end

def print_postfix(node)
  return if node == nil
  print_postfix(node.left)
  print_postix(node.right)
  print node.value + " "
end

# 4
def include?(node, key)
  return false if node == nil
  if node.value == key
    return true
  else
    return include?(node.left,key) && include?(node.right,key)
  end
end

root = TreeNode.new("-")
root.left = TreeNode.new("+")
root.right = TreeNode.new("10")
root.left.left = TreeNode.new("3")
root.left.right = TreeNode.new("2")

# print_infix(root)
# operators(root)
# puts "num leaves = #{count_leaves(root)}"
# puts "tree includes a '-' = #{include?(root,"-")}"
# puts "tree includes a '%' = #{include?(root,"%")}"

