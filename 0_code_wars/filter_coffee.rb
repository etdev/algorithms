# http://www.codewars.com/kata/56069d0c4af7f633910000d3
# --- iteration 1 ---
def search(budget,prices)
  prices.select{ |n| n <= budget }.sort.join(",")
end
