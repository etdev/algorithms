# http://www.codewars.com/kata/55e6f5e58f7817808e00002e
# --- iteration 1 ---
@count = 0

def seven(m)
  y, x = [m.to_s[-1], m.to_s[0...-1]].map(&:to_i)
  new_m = x - 2*y
  if m.to_s.size <= 2
    count_temp = @count
    @count = 0
    return [m, count_temp]
  else divisible_by_seven?(m) && m.to_s.size == 2
    @count += 1
    seven(new_m)
  end
end

def divisible_by_seven?(x)
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
