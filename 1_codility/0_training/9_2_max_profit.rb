# 100/100
def solution(arr)
  return 0 unless arr.size > 0

  min_price_so_far = arr.first
  max_profit_so_far = 0

  arr.drop(1).each do |price_here|
    max_profit_here = [0, price_here - min_price_so_far].max
    max_profit_so_far = [max_profit_here, max_profit_so_far].max
    min_price_so_far = [min_price_so_far, price_here].min
  end

  max_profit_so_far
end
