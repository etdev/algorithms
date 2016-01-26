# http://www.codewars.com/kata/54557d61126a00423b000a45
# --- iteration 1 ---
def shorter_reverse_longer(a,b)
  return "#{b}#{a.reverse}#{b}" if a.size == b.size
  [a, b].sort_by(&:size).tap{ |x| return "#{x[0]}#{x[1].reverse}#{x[0]}"  }
end

