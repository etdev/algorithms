# http://www.codewars.com/kata/55466644b5d240d1d70000ba/
# iteration 1
def candies(s)
  return -1 if s.count < 2
  max_count = s.max
  s.reduce(0) { |acc, current_count| acc + max_count - current_count }
end

# iteration 2
def candies(s)
  s.size < 2 ? -1 : s.max * s.size - s.reduce(&:+)
end
