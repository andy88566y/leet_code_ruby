# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

class BinaryTree
  attr_accessor :root
  def initialize(values)
    root = add_node(values.shift)
    root.left = add_node(values.shift)
    root.right = add_node(values.shift)
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
    # puts "root is nil"
    return 0
  end
  walk(root, 1)
end


root = TreeNode.new(1)
root.left = TreeNode.new(2)
puts max_depth(root)
