# https://www.codewars.com/kata/5365bb5d5d0266cd010009be
# --- iteration 1 ---
WORTHS = { H: 50, Q: 25, D: 10, N: 5, P: 1 }

def make_change(amount)
  remaining_amount = amount
  result_coins = %i(H Q D N P).each_with_object({}) do |coin_type, r|
    current_coin_count = remaining_amount/WORTHS[coin_type]
     r[coin_type] = current_coin_count if current_coin_count > 0
    remaining_amount -= (current_coin_count * WORTHS[coin_type])
  end
end
