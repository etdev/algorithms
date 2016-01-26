# http://www.codewars.com/kata/545aa9cf85166a9d8e000df6
# --- iteration 1 ---
def count(list)
   list.map{ |x| yield(x) }.count(true)
end

# --- iteration 2 ---
def count(list, &block)
  list.partition(&block)[0].size
end

# --- iteration 3 ---
def count(list)
  list.count{ |x| yield(x) }
end

# --- iteration 4 ---
def count list, &block
  list.count(&block)
end

