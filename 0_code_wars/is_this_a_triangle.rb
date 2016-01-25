# http://www.codewars.com/kata/is-this-a-triangle/
# iteration 1
def isTriangle(a,b,c)
  return false if [a, b, c].any? { |x| x <= 0 }
  (a + b) > c  && (a + c) > b && (b + c) > a
end

# iteration 2
def isTriangle(a,b,c)
  a, b, c = [a, b, c].sort
  a + b > c
end
