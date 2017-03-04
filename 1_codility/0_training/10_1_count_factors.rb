# 100/100
def solution(n)
  return 1 if n == 1
  2.upto(Math.sqrt(n)).reduce(2) do |factor_count, i|
    if i * i == n
      factor_count + 1
    elsif (n % i).zero?
      factor_count + 2
    else
      factor_count
    end
  end
end
