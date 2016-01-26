# http://www.codewars.com/kata/55d2aee99f30dbbf8b000001
# --- iteration 1 ---
def score_test(tests, right, omit, wrong)
  tests.map do |test_val|
    if test_val == 2 #incorrect
      wrong * (-1)
    elsif test_val == 1 # omitted
      omit
    elsif test_val == 0 # correct
      right
    else
      0
    end
  end.reduce(&:+)
end

# --- iteration 2 ---
def score_test(tests, right, omit, wrong)
  tests.count(0) * right + tests.count(1) * omit - tests.count(2) * wrong
end

