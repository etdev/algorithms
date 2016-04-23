# http://www.codewars.com/kata/56b7251b81290caf76000978
# --- iteration 1 ---
def get_last_digit(idx)
  idx = idx % 60 if idx > 60
  fibs = (1..60).to_a
  fibs.map!.with_index do |n, i|
    if i == 0 || i == 1
      1
    else
      fibs[i-2] + fibs[i-1]
    end
  end.map! { |x| x % 10 }
  fibs[idx - 1]
end

# --- iteration 2 ---
def get_last_digit(index)
  a, b = 1, 1
  (index-1).times do
    a, b = b, (a+b)%10
  end
  a
end

# --- iteration 3 ---
def get_last_digit(idx)
  ((Math.sqrt(5)+1).fdiv(2) ** (idx % 60)).fdiv(Math.sqrt(5)).round % 10
end

