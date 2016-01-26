# http://www.codewars.com/kata/545abc2d85166a08bd000f80
# --- iteration 1 ---
def min(list, &block)
  list.min{ |a, b| yield(a, b) }
end

# --- iteration 2 ---
def min(list, &block)
  list.min(&block)
end

