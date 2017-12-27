# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
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

def print_list(l)
  if l
    print l.val
    print " -> "
    print_list(l.next)
    return
  else
    p "END"
    return
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
#
def add_two_numbers(l1, l2)
  tmp
  result = tmp
  carry = 0
  while l1 && l2
    carry = 0
    tmp = ListNode.new(l1.val + l2.val)
    if tmp.val >= 10
      carry = 1
      tmp.val -= 10
    end
    if carry > 0
     tmp.next = ListNode.new(carry)
    end
    tmp = tmp.next
    l1 = l1.next
    l2 = l2.next
  end
  while l1
    tmp.val = carry + l1.val
    tmp.next = ListNode.new(0)
    tmp = tmp.next
    l1 = l1.next
  end
  while l2
    tmp.val = carry + l2.val
    tmp.next = ListNode.new(0)
    tmp = tmp.next
    l2 = l2.next
  end
  result
end

list3 = int_to_list(1)
print_list(list3)

list1 = int_to_list(100)
print_list(list1)
list2 = int_to_list(100)
print_list(list2)

print_list(add_two_numbers(list1, list2))
