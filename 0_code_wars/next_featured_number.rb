# http://www.codewars.com/kata/56abc5e63c91630882000057/
# --- iteration 1 ---
def next_numb(n)
  n += 1
  until n >= 9876543210 do
    return n if digits_unique?(n) && n.odd? && multiple_of_three?(n)
    n += 1
  end
  return "There is no possible number that fulfills those requirements"
end

private

def digits_unique?(n)
  n_str = n.to_s
  n_str.chars.uniq.size == n_str.size
end

def multiple_of_three?(n)
  n % 3 == 0
end

# --- iteration 2 ---
def next_numb(n)
  until n >= 9876543210
    n += 1
    return n if featured_number?(n)
  end
  "There is no possible number that fulfills those requirements"
end

def featured_number?(n)
  n.to_s.length == n.to_s.chars.uniq.length && n.odd? && n % 3 == 0
end
