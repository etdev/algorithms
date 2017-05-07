# https://www.codewars.com/kata/5270d0d18625160ada0000e4/
def score(dice)
  result = 0

  if dice.count(1) >= 3
    result += (1000 + ((dice.count(1) - 3) * 100))
    dice.delete(1)
  end

  (2..6).each do |i|
    if dice.count(i) >= 3
      result += (100 * i)
      if i == 5
        result += ((dice.count(5) - 3) * 50)
      end
      dice.delete(i)
    end
  end

  result + (dice.count(5) * 50) + (dice.count(1) * 100)
end
