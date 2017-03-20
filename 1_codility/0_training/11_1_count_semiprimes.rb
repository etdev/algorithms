# 100/100
def solution(n, p, q)
  # get primes up to n
  primes = [false, false].concat([true] * (n - 1))
  (2..Math.sqrt(n)).each do |i|
    j = i * i
    until j > n
      primes[j] = false
      j += i
    end
  end

  # get semiprimes
  semiprimes = [false] * n
  (2..Math.sqrt(n)).each do |i|
    next unless primes[i]

    k = i
    j = i * k
    until j > n
      semiprimes[j] = true
      k = next_prime(primes, k)
      j = i * k
    end
  end

  p_sum = 0
  partial_sums = semiprimes.map do |sp|
    p_sum += sp ? 1 : 0
    p_sum
  end

  results = []
  p.size.times do |i|
    results << (partial_sums.fetch(q[i], partial_sums[-1]) - partial_sums[p[i] - 1])
  end
  results
end

def next_prime(primes, k)
  i = k + 1
  i += 1 until primes[i]
  i
end
