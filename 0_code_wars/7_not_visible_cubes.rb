# http://www.codewars.com/kata/560d6ebe7a8c737c52000084/

# iteration 1
def not_visible_cubes(n)
  return 0 if n < 3
  (n-2)**3
end

# iteration 2
def not_visible_cubes(n)
  (n <= 2 && 0) || (n - 2) ** 3
end
