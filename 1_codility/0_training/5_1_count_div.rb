class Integer
  def divisible_by?(k)
    (self % k).zero?
  end

  def next_divisible_int(k)
    ((self / k) + 1) * k
  end

  def prev_divisible_int(k)
    return (self - k) if divisible_by?(k)

    (self / k) * k
  end
end

def solution(a, b, k)
  count = 0
  count += a.divisible_by?(k) ? 1 : 0
  count += b.divisible_by?(k) ? 1 : 0
  count + ((b.prev_divisible_int(k) - a.next_divisible_int(k)) / k) + 1
end
