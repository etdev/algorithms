# http://www.codewars.com/kata/544aed4c4a30184e960010f4
# --- iteration 1 ---
def divisors(n)
  arr = (2..Math.sqrt(n)).map do |i|
    current = n.to_f / i
    current % 1 == 0 ? [n/current, current].map(&:to_i) : nil
  end.compact.flatten.sort
  arr.length > 0 ? arr : "#{n} is prime"
end

# --- iteration 2 ---
def divisors(n)
  arr = (2..Math.sqrt(n)).each_with_object([]) do |i, divs|
    divs.concat([i, n/i]) if n % i == 0
  end
  arr.any? ? arr.uniq.sort : "#{n} is prime"
end

# --- iteration 3 ---
def divisors(n)
  arr = Array.new(n/2) { |i| n % (i+2) == 0 ? i+2 : nil }.compact
  arr.any? ? arr : "#{n} is prime"
end

# --- iteration 4 ---
def divisors(n)
  arr = (2..n/2).select{ |i| n % i == 0 }
  arr.any? ? arr : "#{n} is prime"
end

