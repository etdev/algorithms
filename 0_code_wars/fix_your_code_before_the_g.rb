# http://www.codewars.com/kata/57158fb92ad763bb180004e7
# --- iteration 1 ---
def rain_amount(rain_amount)
  puts rain_amount
  if rain_amount < 40
    return "You need to give your plant #{40 - rain_amount}mm of water"
  else
   return "Your plant has had more than enough water for today!"
  end
end

