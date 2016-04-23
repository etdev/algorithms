# http://www.codewars.com/kata/564057bc348c7200bd0000ff
# --- iteration 1 ---
def thirt(n)
  vals = []
  until vals.uniq != vals
    digits = n.to_s.chars.map(&:to_i).compact
    multipliers = [1, 10, 9, 12, 3, 4].cycle.first(digits.size)
    current = digits.reverse.zip(multipliers).reduce(0){ |acc, (x, y)|  acc + x*y }
    vals << current
    n = current
  end
  n
end

n?(x)
  x % 7 == 0
end

# --- iteration 2 ---
def seven(m, cnt = 0)
  x, y = m.divmod(10)
  if m < 100
    return [m, cnt]
  else
    seven(x - 2*y, cnt + 1)
  end
end

# --- iteration 3 ---
def seven(m, c=0)
  m < 100 ? [m, c] : seven(m.divmod(10)[0] - 2*m.divmod(10)[1], c+1)
end

# --- iteration 4 ---
def seven(m, step = 0)
  x, y = m.divmod(10)
  m < 100 ? [m, step] : seven(x - 2*y, step + 1)
end

