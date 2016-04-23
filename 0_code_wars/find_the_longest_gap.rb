# http://www.codewars.com/kata/55b86beb1417eab500000051
# --- iteration 1 ---
def gap(num)
  puts "num: #{num.to_s(2).inspect}"
  (num.to_s(2).scan(/(?<=1)0+(?=1)/).map(&:size).max) || 0
end

# --- iteration 2 ---
def gap(num)
  num.to_s(2).scan(/(?<=1)0+(?=1)/).map(&:size).max || 0
end

