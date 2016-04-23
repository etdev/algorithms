# http://www.codewars.com/kata/514b92a657cdc65150000006
# --- iteration 1 ---
def solution(num)
 (1...num).reduce(0) do |acc, el|
   acc += el if (el % 3 == 0 || el % 5 == 0)
  acc
 end
end

