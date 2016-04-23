# http://www.codewars.com/kata/56f6919a6b88de18ff000b36
# --- iteration 1 ---
def how_many_dalmatians(number)
  dogs = ["Hardly any", "More than a handful!", "Woah that's a lot of dogs!", "101 DALMATIONS!!!"]
  number <= 10 ? dogs[0] : (number <= 50 ? dogs[1] : (number == 101 ? dogs[3] : dogs[2]))
end

