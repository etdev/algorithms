# http://www.codewars.com/kata/55d38b959f9c33f3fb00007d
# --- iteration 1 ---
def adjust(coin, price)
  price % coin == 0 ? price : ((price / coin) + 1) * coin
end

# --- iteration 2 ---
def adjust(coin, price)
  price.fdiv(coin).ceil*coin
end

