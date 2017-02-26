def solution(str)
  count = 0

  str.each_char do |chr|
    if chr == "("
      count += 1
    else
      count -= 1
      return 0 unless count >= 0
    end
  end

  count == 0 ? 1 : 0
end
