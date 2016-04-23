# http://www.codewars.com/kata/55d1d6d5955ec6365400006d
# --- iteration 1 ---
def round_to_next_5(n)
  until(n % 5 == 0) do n += 1 end; n
end

# --- iteration 2 ---
def round_to_next_5(n)
  n += 1 until n % 5 == 0; n
end

