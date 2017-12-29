#Can try edit list to integer
#than add them up
#than turn integer to list
#save the effort for dealing carry
#

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end
  # can I extend this class??
  # like adding
  #
  def add(val)
    if @next == nil
      @next = ListNode.new(val)
    else
      @next.add(val)
    end
  end
end

def int_to_list(input)
  list = ListNode.new(input % 10)
  result = list
  input /= 10
  while input > 0
    # puts "la " + input.to_s
    list.next = ListNode.new(input % 10)
    list = list.next
    input /= 10
  end
  result
end

def printList(node)
  if node == nil
    print "end\n"
    return
  else
    print node.val, "->"
  end
  printList(node.next)
end

def arr_to_list(array)
  list = ListNode.new(nil)
  array.each do |arr|
    list.add(arr)
  end
  list.next
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
#


def add_two_numbers(l1, l2)
  if l1 == nil || (l1.next == nil && l1.val == 0)
    puts "l1 is 0"
    return l2
  end
  if l2 == nil || (l2.next == nil && l2.val == 0)
    puts "l2 is 0"
    return l1
  end

  head = ListNode.new(nil)
  tail = head
  carry = 0
  while l1 && l2
    val = l1.val + l2.val + carry
    if val >= 10
      val -= 10
      carry = 1
    else
      carry = 0
    end

    tail.next = ListNode.new(val)

    tail = tail.next
    l1 = l1.next
    l2 = l2.next
  end



  while l1
    val = l1.val + carry
    if val >= 10
      val -= 10
      carry = 1
    else
      carry = 0
    end
    tail.next = ListNode.new(val)
    tail = tail.next
    l1 = l1.next
  end

  while l2
    val = l2.val + carry
    if val >= 10
      val -= 10
      carry = 1
    else
      carry = 0
    end
    tail.next = ListNode.new(val)
    tail = tail.next
    l2 = l2.next
  end

  if carry == 1
    tail.next = ListNode.new(1)
  end

  head.next
end

l1 = ListNode.new(1)
l1.add(2)
l1.add(4)
printList l1

l2 = ListNode.new(1)
l2.add(3)
l2.add(4)
printList l2

l3 = arr_to_list([2, 4, 3])
l4 = arr_to_list([5, 6, 4])
printList l3
printList l4

printList add_two_numbers(l1, l2)
printList add_two_numbers(l3, l4)
l3 = arr_to_list([9, 9, 9])
l4 = arr_to_list([9, 9, 9])
printList add_two_numbers(l3, l4)

l3 = arr_to_list([9, 9, 9, 9])
l4 = arr_to_list([9, 9, 9])
printList add_two_numbers(l3, l4)

l3 = arr_to_list([1, 8])
l4 = arr_to_list([0])
printList add_two_numbers(l3, l4)

l3 = arr_to_list([0])
l4 = arr_to_list([7, 3])
printList add_two_numbers(l3, l4)

l3 = arr_to_list([8, 6])
l4 = arr_to_list([6, 4, 8])
printList add_two_numbers(l3, l4)

l3 = arr_to_list([0])
l4 = arr_to_list([7, 3])
printList add_two_numbers(l3, l4)

l3 = arr_to_list([0])
l4 = arr_to_list([2])
printList add_two_numbers(l3, l4)
printList add_two_numbers(l4, l3)

