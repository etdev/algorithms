require "set"

def backwardsPrime(start, stop)
  primes = sieve(stop).drop_while{ |i| i < start }.to_set
  primes.select{ |a| b = a.to_s.chars.reverse.join.to_i; prime?(b) && a != b }
end

def sieve(n)
  potential = [false, false, *[true] * (n - 1)]
  (2..Math.sqrt(n)).each do |i|
    ((i**2 .. n).step(i)).each do |j|
      potential[j] = false
    end
  end
  potential.map.with_index.reduce([]) { |acc, (t, i)| t ? acc << i : acc }
end

def prime?(n)
  (2..Math.sqrt(n).ceil).each do |i|
    return false if n % i == 0
  end

  true
end
