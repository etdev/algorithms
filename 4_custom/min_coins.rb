require_relative "./testable"

class MinCoins
  include Testable

  # val = coin value
  # min_results = memo
  def solution(total, min_counts=[])
    return nil unless total.is_a?(Fixnum)
    min_counts = [0]
    coin_vals = [1, 3, 5]
    min_count(coin_vals, total, min_counts)
  end

  def min_count(coin_vals, total, min_counts)
    return min_counts[total] if min_counts[total]
    active_coins = coin_vals.select { |v| total >= v }
    min = active_coins.map do |coin|
      min_counts[total - coin] || min_count(coin_vals, total - coin, min_counts)
    end.min + 1
    min_counts[total] = min
    min
  end

  def test_cases
    [
      { name: "empty array", in: [], out: nil },
      { name: "nil", in: nil, out: nil },
      { name: "string", in: "invalid", out: nil },
      { name: "one cent", in: 1, out: 1 },
      { name: "two cents", in: 2, out: 2 },
      { name: "three cents", in: 3, out: 1 },
      { name: "four cents", in: 4, out: 2 }
    ]
  end
end

MinCoins.new.test
