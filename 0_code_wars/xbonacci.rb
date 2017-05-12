# https://www.codewars.com/kata/fibonacci-tribonacci-and-friends/
def Xbonacci(s, n)
  sz = s.size

  (sz...n).each_with_object(s) { |i| s[i] = s.last(sz).reduce(:+) }
    .slice(0...n)
end
