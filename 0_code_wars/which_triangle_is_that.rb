# http://www.codewars.com/kata/564d398e2ecf66cec00000a9
# --- iteration 1 ---
def type_of_triangle(a, b, c)
  return "Not a valid triangle" unless [a, b, c].all? { |x| x.is_a? Integer }
  return "Not a valid triangle" unless (a + b) > c && (a + c) > b && (b + c) > a
  return "Equilateral" if a == b && b == c
  return "Isosceles" if [a, b, c].uniq.count == 2
  "Scalene"
end

# --- iteration 2 ---
def type_of_triangle(a, b, c)
  return "Not a valid triangle" unless [a, b, c].all?{ |x| x.is_a?(Integer) } 
  return "Not a valid triangle" unless (a + b) > c && (a + c) > b && (b + c) > a
  return "Equilateral" if a == b && b == c
  [a,b,c].uniq.count == 2 ? "Isosceles" : "Scalene"
end

# --- iteration 3 ---
def type_of_triangle(a, b, c)
  return "Not a valid triangle" unless [a,b,c].all?{|x| Integer === x}
  return "Not a valid triangle" unless (a+b)>c && (a+c)>b && (b+c)>a
  ["Equilateral", "Isosceles", "Scalene"][ [a,b,c].uniq.size-1 ]
end
