# http://www.codewars.com/kata/5552101f47fc5178b1000050/
# --- iteration 1 ---
def dig_pow(n, p)
  n_digs = n.to_s.chars.map(&:to_i)
  p_digs = (p...(p + n_digs.count)).to_a
  x = n_digs.each_with_index.reduce(0) do |acc, (el, i)|
    acc + el ** p_digs[i]
  end
  x.to_f / n % 1 == 0 ? x / n : -1
end

# --- iteration 2 ---
def dig_pow(n, p)
  sum = n.to_s.chars.map(&:to_i).each_with_index.reduce(0) do |acc, (el, i)|
    acc += el**(p + i)
  end
  sum % n == 0 ? sum/n : -1
end
