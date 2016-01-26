# http://www.codewars.com/kata/52e9aa89b5acdd26d3000127
# --- iteration 1 ---
def spam(number)
  str = ""
  number.times { |_| str << 'hue'}
  str
end

# --- iteration 2 ---
def spam(number)
  'hue' * number
end

