# http://www.codewars.com/kata/53da3dbb4a5168369a0000fe
# --- iteration 1 ---
def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
end

# --- iteration 2 ---
def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

# --- iteration 3 ---
def even_or_odd(number)
  ["Even", "Odd"][number % 2]
end

