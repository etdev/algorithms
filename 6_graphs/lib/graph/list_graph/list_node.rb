# ListNode implementation for creating linked lists
# Used in List Graph
class ListNode
  attr_accessor :next, :val

  def initialize(val = nil)
    @val = val
    @next = nil
  end

  def add(new_val)
    @val = new_val and return if val.nil?

    node = self
    loop do
      if node.next.nil?
        node.next = ListNode.new(new_val) and return
      end
      node = node.next
    end
  end

  def remove(search_val)
    return if val.nil?
    if self.next.nil?
      if val == search_val
        @val = nil
      else
        return
      end
    end

    node = self
    until node.next.nil?
      if node.next.val == search_val
        node.next = node.next.next
        return
      end
      node = node.next
    end
  end

  def contains?(search_val)
    node = self
    until node.nil?
      return true if node.val == search_val
      node = node.next
    end

    false
  end

  def to_s
    return "nil" unless val

    vals = []
    node = self

    until node.nil?
      vals << node.val
      node = node.next
    end

    vals.join(" -> ")
  end

  def to_a
    vals = []
    node = self
    until node.nil? || node.val.nil?
      vals << node.val
      node = node.next
    end
    vals
  end
end
