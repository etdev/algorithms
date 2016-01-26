# http://www.codewars.com/kata/51c7d8268a35b6b8b40002f2
# --- iteration 1 ---
def solution(pairs)
  pairs.map{ |k, v| "#{k} = #{v}" }.join(",")
end

