# http://www.codewars.com/kata/56445cc2e5747d513c000033
# --- iteration 1 ---
def validate(msg)
  /\AMDZHB \d{2} \d{3} [A-Z]+ \d{2} \d{2} \d{2} \d{2}\z/ ===  msg
end

