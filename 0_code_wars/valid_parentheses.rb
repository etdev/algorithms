# http://www.codewars.com/kata/52774a314c2333f0a7000688
# --- iteration 1 ---
def valid_parentheses(str)
  stack = Stack.new
  str.each_char do |chr|
    if chr == "("
      stack.push("x")
    elsif chr == ")"
      return false if stack.empty?
      stack.pop
    end
  end
  stack.empty?
end

class Stack
  def initialize
    @elements = []
  end

  def empty?
    @elements.empty?
  end

  def push(el)
    @elements.unshift(el)
  end

  def pop
    @elements.shift
  end
end

