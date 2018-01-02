class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def preorder_traversal(node)
  if node.is_nil?
    return
  end
  puts node.val
  preorder_traversal(node.left)
  preorder_traversal(node.right)
end

def inorder_traversal(node)
  if node.is_nil?
    return
  end
  inorder_traversal(node.left)
  puts node.val
  inorder_traversal(node.right)
end

def postorder_traversal(node)
  if node.is_nil?
    return
  end
  postorder_traversal(node.left)
  postorder_traversal(node.right)
  puts node.val
end

def levelorder_traversal(node)
  node_array = []
  node_array.push(node)
  while !node_array.empty
    tmp_node = node_array.pop #?
    puts tmp_node.val
    if tmp_node.left
      node_array.push(tmp_node.left)
    end
    if tmp_node.right
      node_array.push(tmp_node.right)
    end
  end
end


