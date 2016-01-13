# http://www.codewars.com/kata/5262119038c0985a5b00029f/
# --- iteration 1 ---
def isPrime(num)
  return false if num < 2
    (2..(Math.sqrt(num))).each do |x|
  return false if num % x == 0
  end
  true
end

# --- iteration 2 ---
def isPrime(num)
  return false if num < 2
  (2..Math.sqrt(num)).each { |i| return false if num % i == 0 }
  true
end
