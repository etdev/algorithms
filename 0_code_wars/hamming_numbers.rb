# https://www.codewars.com/kata/hamming-numbers
# attempt #1 - correct answers but not fast enough
require "set"

def hamming(n)
  base, m, count = 1, 1, 1
  candidates = []
  seen = Set.new([1])

  until count == n
    cand2 = base * 2
    cand2_pt = candidates.index(candidates.bsearch{ |x| x > base * 2 }) || candidates.size
    candidates.insert(cand2_pt, cand2)

    cand3 = base * 3
    cand3_pt = candidates.index(candidates.bsearch{ |x| x > base * 3 }) || candidates.size
    candidates.insert(cand3_pt, cand3)

    cand5 = base * 5
    cand5_pt = candidates.index(candidates.bsearch{ |x| x > base * 5 }) || candidates.size
    candidates.insert(cand5_pt, cand5)

    count += 1

    o = m
    until m != o
      m = candidates.shift
    end

    seen.add(m)

    base += 1
    until seen.include?(base)
      base += 1
    end
  end

  m
end

# attempt #2 - passes codewars
def hamming(n)
  base, seen, twos, threes, fives = 0, [1], [], [], []
  m = 1

   until n == 1
    twos << seen[base] * 2
    threes << seen[base] * 3
    fives << seen[base] * 5

    o = m
    until m != o
      m = [twos, threes, fives].min_by(&:first).shift
    end

    n -= 1
    base += 1
    seen << m
  end

  m
end
