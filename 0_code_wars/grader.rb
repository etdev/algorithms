# http://www.codewars.com/kata/53d16bd82578b1fb5b00128c
# --- iteration 1 ---
def grader(score)
  return "A" if score == 1
  (score <= 0.5 || score > 1) ? "F" : %w(F D C B A)[(score*10) % 5]
end

# --- iteration 2 ---
def grader(score)
  mappings = { 0.9..1.0 => "A",
               0.8..0.89 => "B",
               0.7..0.79 => "C",
               0.6..0.69 => "D"}
  mappings.select{ |k, _v| k === score }.values.first || "F"
end

