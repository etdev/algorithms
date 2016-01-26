# http://www.codewars.com/kata/560dab9f8b50f89fd6000070
# --- iteration 1 ---
money = 10
candy = 1.42
chips = 2.40
soda = 1.00
change = money - [candy, chips, soda].reduce(&:+)

