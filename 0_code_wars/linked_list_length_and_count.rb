# http://www.codewars.com/kata/linked-lists-length-and-count/ruby
# --- Iteration 1 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def length(node)
  return 0 if node.nil?
  node.next ? length(node.next) + 1 : 1
end

def count(node, data)
  return 0 if node.nil?
  count_here = (data == node.data) ? 1 : 0
  node.next ? count(node.next, data) + count_here : count_here
end

=begin NOTE
* `length` can be written more succinctly as:
def length(node)
  node ? 1 + length(node.next) : 0
end
=end
