def helper_print_infix(node)
  if node.nil?
    return
  end
  helper_print_infix(node.left)
  puts node.data
  helper_print_infix(node.right)
end

def print_infix
  helper_print_infix(root)
end
