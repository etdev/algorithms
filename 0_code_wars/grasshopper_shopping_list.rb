# http://www.codewars.com/kata/560c31275c39c481c4000022
# --- iteration 1 ---
sandwiches, salads, wraps, frenchFries = 4, 6, 5, 10
prices = [8.0, 7.0, 6.5, 1.2]
totalPrice = [sandwiches, salads, wraps, frenchFries].map.with_index.reduce(0) do |acc, (el, i)|
  acc + el * prices[i]
end

