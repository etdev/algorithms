def solution(n)
  count = 0
  1.upto(Math.sqrt(n)) do |i|
    count += 2 if n%i == 0
  end
  sqrt_int = Math.sqrt(n).to_int
  count -= 1 if (sqrt_int ** 2) == n
  count
end
