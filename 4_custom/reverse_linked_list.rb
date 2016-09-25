require_relative "./testable"

class ReverseLinkedList
  include Testable

  # Definition for singly-linked list.
  # @param {ListNode} head
  # @return {ListNode}
  class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end

    def to_s
      vals = []
      n = self
      until n.nil?
        vals << n.val
        n = n.next
      end
      "[#{vals.join(",")}]"
    end

    def ==(other)
      self.to_s == other.to_s
    end
  end

  def reverse_list(head)
    return nil unless head.is_a?(ListNode)
    node = head
    prev = nil
    until node.nil?
      next_node  = node.next
      node.next = prev
      prev = node
      node = next_node
    end
    prev
  end

  def reverse_list_recursive(head)
    return nil unless head.is_a?(ListNode)
    return head unless head.next
    rest = reverse_list_recursive(head.next)
    head.next.next = head
    head.next = nil
    rest
  end

  def test_cases
    # check iterative
    one_node_list = generate_list([1])
    one_node_list_rev = generate_list([1])

    two_node_list = generate_list([1, 2])
    two_node_list_rev = generate_list([2, 1])
    base = { method_name: "reverse_list" }
    base_rec = { method_name: "reverse_list_recursive" }

    one_thousand_element_arr = [*1..1000].shuffle
    one_thousand_element_arr_rev = one_thousand_element_arr.reverse

    one_thousand_node_list = generate_list(one_thousand_element_arr)
    one_thousand_node_list_rev = generate_list(one_thousand_element_arr_rev)

    cases = [
      { name: "empty array", in: [], out: nil },
      { name: "nil", in: nil, out: nil },
      { name: "string", in: "invalid", out: nil },
      { name: "one node", in: one_node_list, out: one_node_list },
      { name: "two nodes", in: two_node_list, out: two_node_list_rev },
      { name: "thousand nodes", in: one_thousand_node_list, out: one_thousand_node_list_rev },
    ]
    #cases.map{ |h| base.merge(h) }
    # check recursive
    cases.map{ |h| base_rec.merge(h) }
  end

  private

  def generate_list(vals)
    return nil unless vals.is_a?(Array)
    head = ListNode.new(vals.shift)
    node = head
    until vals.empty?
      old_node = node
      node = ListNode.new(vals.shift)
      old_node.next = node
    end
    head
  end
end

ReverseLinkedList.new.test
