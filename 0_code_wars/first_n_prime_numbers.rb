# http://www.codewars.com/kata/535bfa2ccdbf509be8000113
# --- iteration 1 --
class Primes
  def self.first(n)
    @primes ||= [2]
    until @primes.size >= n do
      @primes << get_next_prime(@primes.last)
    end
    @primes.first(n)
  end

  private

  def self.get_next_prime(start_num)
    n = start_num + 1
    until n.is_prime?
      n += 1
    end
    return n
  end
end

class Fixnum
  def is_prime?
    2.upto(Math.sqrt(self)).each do |i|
      return false if self % i == 0
    end
    true
  end
end
