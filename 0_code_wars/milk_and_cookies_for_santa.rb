# http://www.codewars.com/kata/52af7bf41f5a1291a6000025
# --- iteration 1 ---
def time_for_milk_and_cookies(date)
  /\A\d+-12-24\z/ === date.to_s
end

# --- iteration 2 ---
def time_for_milk_and_cookies date
  date.strftime("%m%d") == "1224"
end

# --- iteration 3 ---
def time_for_milk_and_cookies date
  date.day == 24 && date.month == 12
end

