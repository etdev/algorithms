# http://www.codewars.com/kata/56b0ff16d4aa33e5bb00008e
# --- iteration 1 ---
def shorten_to_date(long_date)
  long_date.split[0..-2].join(" ").delete(",")
end

