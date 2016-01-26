# http://www.codewars.com/kata/563b74ddd19a3ad462000054
# --- iteration 1 ---
def stringy(size)
  (0...size).map{ |x| x.even? ? 1 : 0 }.join("")
end

# --- iteration 2 ---
def stringy(size)
  '10'.chars.cycle.take(size).join("")
end

# --- iteration 3 ---
def stringy(size)
  "".ljust(size, "10")
end

