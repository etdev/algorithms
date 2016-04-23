# http://www.codewars.com/kata/511f11d355fe575d2c000001
# --- iteration 1 ---
def two_oldest_ages(ages)
  [ages.slice!(ages.index(ages.max)), ages.max].reverse
end

# --- iteration 2 ---
def two_oldest_ages(ages)
  ages.sort.last(2)
end

