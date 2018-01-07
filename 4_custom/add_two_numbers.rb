# From leetcode: https://leetcode.com/problems/add-two-numbers/description/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  head = ListNode.new(nil)
  node = head
  carry = 0

  loop do
    return head if l1.nil? && l2.nil? && carry <= 0
    sum = 0

    l1 && sum += l1.val
    l2 && sum += l2.val

    sum += carry

    digit = sum % 10
    carry = sum / 10

    l1 && l1 = l1.next
    l2 && l2 = l2.next

    node.val = digit

    return head if l1.nil? && l2.nil? && carry <= 0
    node.next = ListNode.new(nil)
    node = node.next
  end
end
