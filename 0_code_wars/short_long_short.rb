# http://www.codewars.com/kata/50654ddff44f800200000007
# --- iteration 1 ---
def solution(a, b)
  x = [a,b].sort_by(&:length).cycle
  x.first + x.next + x.next
end

# --- iteration 2 ---
def solution(a, b)
  a.size > b.size ? "#{b}#{a}#{b}" : "#{a}#{b}#{a}"
end

# --- iteration 3 ---
def solution(a, b)
  a<b ? a+b+a : b+a+b
end

