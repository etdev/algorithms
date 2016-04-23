# http://www.codewars.com/kata/558dd9a1b3f79dc88e000001
# --- iteration 1 ---
def find_dup(arr)
  arr.map{ |x| [x, arr.count(x)] }.select{ |x| x[1] == 2 }[0][0]
end

