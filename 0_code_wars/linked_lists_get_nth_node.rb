# http://www.codewars.com/kata/55befc42bfe4d13ab1000007
# --- iteration 1 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def get_nth(node,index)
  raise StandardError  if node == nil || index < 0
  return node if index == 0
  count = 0
  until count == index
    raise StandardError if node.next == nil
    node = node.next
    count += 1
  end
  node
end

