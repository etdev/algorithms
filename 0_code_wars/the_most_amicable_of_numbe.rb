# http://www.codewars.com/kata/56b5ebaa26fd54188b000018
# --- iteration 1 ---
def amicable_numbers(n1,n2)
  sum_of_factors(n1) == n2 || sum_of_factors(n2) == n1
end

def sum_of_factors(n)
  [*1...n].reduce{ |acc, i| n % i == 0 ? acc + i : acc}
end

