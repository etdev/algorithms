# http://www.codewars.com/kata/563f037412e5ada593000114
# --- iteration 1 ---
def calculate_years(principal, interest, tax, desired)
  return 0 if principal == desired
  years_taken = 0
  loop do
    years_taken += 1
    principal = principal + (principal * interest) * (1 - tax)
    return years_taken if principal >= desired
  end
end

