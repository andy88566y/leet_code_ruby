# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
    def add(val)
      if @next == nil
        @next = ListNode.new(val)
      else
        @next.add(val)
      end
    end
end

# class LinkedList
#   def initialize(val)
#     @head = ListNode.new(val)
#   end

#   def add(val)
#     current = @head
#     while current.next != nil
#       current = current.next
#     end
#     current.next = ListNode.new(val)
#   end

#   def return_list
#     elements = []
#     current = @head
#     while current.next != nil
#       elements << current
#       current = current.next
#     end
#     elements << current
#   end
# end

def printList(node)
  if node == nil
    print "end\n"
    return
  else
    print node.val, "->"
  end
  printList(node.next)
end



# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def merge_two_lists(l1, l2)
  result = ListNode.new(nil)
  idx = result

  while l1 && l2
    if l1.val <= l2.val
      idx.next = ListNode.new(l1.val)
      l1 = l1.next
    else
      idx.next = ListNode.new(l2.val)
      l2 = l2.next
    end
    idx = idx.next
  end

  idx.next = l1 ? l1 : l2

  return result.next
end

def my_merge_two_lists(l1, l2)
  result = nil
  idx = nil

  if l1 == nil
    return l2
  end
  if l2 == nil
    return l1
  end

  if l1.val <= l2.val
    result = ListNode.new(l1.val)
    idx = result
    l1 = l1.next
  else
    result = ListNode.new(l2.val)
    idx = result
    l2 = l2.next
  end

  while l1 && l2
    if l1.val <= l2.val
      idx.next = ListNode.new(l1.val)
      l1 = l1.next
      idx = idx.next
    else
      idx.next = ListNode.new(l2.val)
      l2 = l2.next
      idx = idx.next
    end
  end

  while l1
    idx.next = ListNode.new(l1.val)
    idx = idx.next
    l1 = l1.next
  end

  while l2
    idx.next = ListNode.new(l2.val)
    idx = idx.next
    l2 = l2.next
  end

  return result
end

l1 = ListNode.new(1)
l1.add(2)
l1.add(4)
printList l1

l2 = ListNode.new(1)
l2.add(3)
l2.add(4)
printList l2


printList merge_two_lists(l1, l2)

l1 = nil
l2 = nil
printList merge_two_lists(l1, l2)
