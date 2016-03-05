# http://www.codewars.com/kata/56d6c333c9ae3fc32800070f/
# --- iteration 1 ---
def year_days(year)
   if year % 400 == 0
    "#{year} has 366 days"
  elsif year % 100 == 0
    "#{year} has 365 days"
  elsif year % 4 == 0
    "#{year} has 366 days"
  else
    "#{year} has 365 days"
  end
end
