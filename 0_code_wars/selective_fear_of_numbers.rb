# http://www.codewars.com/kata/55b1fd84a24ad00b32000075
# --- iteration 1 ---

def am_I_afraid(day,num)
  case day
  when "Monday"
    num == 12
  when "Tuesday"
    num > 95
  when "Wednesday"
    num == 34
  when "Thursday"
    num == 0
  when "Friday"
    num%2 ==0
  when "Saturday"
    num == 56
  when "Sunday"
    num == 666 || num == -666
  else
    false
  end

end

