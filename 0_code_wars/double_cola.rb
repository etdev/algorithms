# http://www.codewars.com/kata/551dd1f424b7a4cdae0001f0
# --- iteration 1 ---
def whoIsNext(names, n)
  cutoff = prev_cutoff(n, names.length)
  names[(n-1-(cutoff*names.length)).fdiv(cutoff + 1).floor]
end

def prev_cutoff(n, length)
  i = 0
  current_cutoff = 0
  old_cutoff = 0
  while current_cutoff*length <= n do
    old_cutoff = current_cutoff
    current_cutoff = ((2 ** (i+1)) - 1)
    i += 1
  end
  old_cutoff
end

# --- iteration 2 ---
def whoIsNext(names, r)
  r, len = r-1, names.length
  until r < len
    r -= len
    r /= 2
  end
  names[r]
end

# --- iteration 3 ---
def whoIsNext(names, r)
  r, len = r-1, names.length
  until r < len
    r = (r - len) / 2
  end
  names[r]
end

