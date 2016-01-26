# http://www.codewars.com/kata/5502c9e7b3216ec63c0001aa
# --- iteration 1 ---
def openOrSenior(data)
  data.map{ |arr| (arr[0] >= 55 && arr[1] > 7) ? "Senior" : "Open" }
end

