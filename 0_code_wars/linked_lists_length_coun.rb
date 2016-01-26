# http://www.codewars.com/kata/55beec7dd347078289000021
# --- iteration 1 ---
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

