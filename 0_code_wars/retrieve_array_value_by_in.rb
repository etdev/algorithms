# http://www.codewars.com/kata/515ceaebcc1dde8870000001
# --- iteration 1 ---
def solution(items, index, default_value)
  (-items.size...items.size) === index ? items[index] : default_value
end

# --- iteration 2 ---
def solution(items, index, default_value)
  items.fetch(index, default_value)
end

