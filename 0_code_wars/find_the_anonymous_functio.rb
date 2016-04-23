# http://www.codewars.com/kata/55a12bb8f0fac1ba340000aa
# --- iteration 1 ---
def find_function(func, arr)
  anon = func.find{ |x| x.is_a?(Proc) }
  arr.map { |x| anon.call(x) ? x : nil }.compact
end

# --- iteration 2 ---
def find_function(func,arr)
  anon = func.find{ |f| f.is_a?(Proc) }
  arr.select{ |x| anon.(x) }
end

