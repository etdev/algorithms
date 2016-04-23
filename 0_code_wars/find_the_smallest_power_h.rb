# http://www.codewars.com/kata/56ba65c6a15703ac7e002075
# --- iteration 1 ---
def find_next_power(val, pow)
  lower = val ** (1.fdiv(pow))
  ((lower.floor + 1) ** pow)
end

