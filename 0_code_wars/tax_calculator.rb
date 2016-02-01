# http://www.codewars.com/kata/56314d3c326bbcf386000007
# --- iteration 1 ---
def tax_calculator(total)
  return 0 unless total.kind_of?(Numeric) && total >= 0
  accumulator = 0
  if total <= 10
    return (total * 0.1).round(2)
  elsif total <= 20
    return (1 + (total - 10) * 0.07).round(2)
  elsif total <= 30
    return (1 + 0.7 + (total - 20) * 0.05).round(2)
  else
    return (1 + 0.7 + 0.5 + (total - 30) * 0.03).round(2)
  end
end

