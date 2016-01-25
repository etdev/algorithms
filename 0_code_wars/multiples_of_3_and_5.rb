# http://www.codewars.com/kata/514b92a657cdc65150000006/
# --- implementation 1 ---
def solution(num)
 (1...num).reduce(0) do |acc, el|
   acc += el if (el % 3 == 0 || el % 5 == 0)
   acc
 end
end

def solution(n)
  (1...n).each_with_object(0) do |el, m|
    m + el if (el % 3 == 0 || el % 5 == 0)
  end
end
