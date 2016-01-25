# http://www.codewars.com/kata/josephus-permutation/
# --- iteration 1 ---
def josephus(items, k)
  result_items = []
  loop do
    break if items.empty?
    items.rotate!(k-1)
    result_items << items.delete_at(0)
  end
  result_items
end

# --- iteration 2 ---
def josephus(items, k)
  result_items = []
  until items.empty? do
    items.rotate!(k-1)
    result_items << items.shift
  end
  result_items
end
