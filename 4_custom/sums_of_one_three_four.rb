require_relative "./testable"
# find number of ways to sum the integers (1, 3, 4) up to get n.
# order matters (i.e. [1 + 3 + 1] != [3 + 1 + 1])
class SumsOfOneThreeFour
  include Testable

  def solution(n)
    return 0 if n < 0
    counts = [1, 1, 1, 2]
    (4..n).each do |i|
      counts[i] = counts[i-1] + counts[i-3] + counts[i-4]
    end
    counts[n]
  end

  def test_cases
    [
      { name: "negative1", in: -500, out: 0 },
      { name: "negative2", in: -1, out: 0 },
      { name: "zero", in: 0, out: 1 },
      { name: "one", in: 1, out: 1 },
      { name: "three", in: 3, out: 2 },
      { name: "four", in: 4, out: 4 },
      { name: "five", in: 5, out: 6 }
    ]
  end
end

SumsOfOneThreeFour.new.test

# notes
# 1) define subproblems
# Dn = # of ways to get n from adding 1, 3, 4
# 2) find recurrence relation
# n = x1 + x2 + x3 + ... + xm
# if xm = 1, n-1 = sum of vals without last = (m-1) vals
# xm can be 1, 3, or 4
# Dn = Dn-1 + Dn-3 + Dn-4
# 3) solve base cases
# 0 => 1
# 1 => 1
# 2 => 1
# 3 => 2

