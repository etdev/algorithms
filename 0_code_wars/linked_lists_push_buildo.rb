# http://www.codewars.com/kata/55be95786abade3c71000079
# --- iteration 1 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def push(head, data)
  node = Node.new(data)
  node.next = head
  node
end

def build_one_two_three
  head = nil
  [3, 2, 1].each do |i|
    head = push(head, i)
  end
  head
end

# --- iteration 2 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def push(head, data)
  node = Node.new(data)
  node.next = head
  node
end

def build_one_two_three
  head = nil
  [3, 2, 1].each do |i|
    head = push(head, i)
  end
  head
end

