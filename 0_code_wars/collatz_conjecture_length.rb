# http://www.codewars.com/kata/54fb963d3fe32351f2000102
# --- iteration 1 ---
def collatz(n)
  count = 1
  loop do
    return count if n == 1
    n.even? ? n = n / 2 : n = (n*3) + 1
    count += 1
  end
end

