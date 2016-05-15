# http://www.codewars.com/kata/52a89c2ea8ddc5547a000863/
# --- iteration 1 ---
def loop_size(node)
  # tortoise, hare
  t = node
  h = node

  loop do
    t = t.next
    h = h.next.next
    break if t == h
  end

  node_count = 0

  loop do
    t = t.next
    node_count += 1
    break if t == h
  end

  node_count
end

# --- iteration 2 ---
# when you have access to the Linked List implementation
class Node
  attr_accessor :mark
end

def loop_size(node)
  idx = 0
  until node.mark
    node.mark = idx
    idx += 1
    node = node.next
  end
  idx - node.mark
end
