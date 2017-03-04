def solution(n)
  return 4 if n == 1
  2.upto(Math.sqrt(n)).reduce(2 * (1 + n)) do |min_perim, i|
    if (n % i).zero?
      [2 * (n / i + i), min_perim].min
    else
      min_perim
    end
  end
end
