def gap(g, m, n)
  sqrt_m = Math.sqrt(m).ceil
  prime_candidates = [false, false].concat([true] * sqrt_m)
  (2..sqrt_m).each do |i|
    (i * 2).step(sqrt_m, i).each do |j|
      prime_candidates[j] = false
    end
  end

  primes = prime_candidates.map.with_index do |is_prime, val|
    is_prime ? val :   nil
  end.compact

  new_prime_candidates = [true] * (n - m)
  primes.each do |i|
    ( ((m / i) * i).step(n, (i)) ).each do |j|
      new_prime_candidates[j - m] = false
    end
  end

  new_primes = new_prime_candidates.map.with_index do |is_prime, val|
    is_prime ? val + m : nil
  end.compact

  new_primes.each_cons(2) do |a, b|
    return [a, b] if b - a == g
  end

  nil
end
