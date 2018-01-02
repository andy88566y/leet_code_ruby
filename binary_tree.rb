class BinaryTree
  attr_accessor :root
  def initialize(node)
    root = node
  end

end


def walk(node, depth)
  if node == nil
    return depth
  end
  left_depth = 0
  right_depth = 0
  if node.left
    left_depth = walk(node.left, depth+1)
  end
  if node.right
    right_depth = walk(node.right, depth+1)
  end
  return [left_depth, right_depth, depth].max
end

def max_depth(root)
  unless root
    return 0
  end
  walk(root, 1)
end
