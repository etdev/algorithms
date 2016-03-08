# http://www.codewars.com/kata/563fb342f47611dae800003c
# --- iteration 1 ---
def trim(str, size)
  if str.size < 3
    return "#{str.slice(0...size)}..."
  elsif str.size <= size
    return str
  else
    new_sz = (size > 3 ? (size-3).abs : size)
    return "#{str.slice(0...new_sz)}..."
  end
end
