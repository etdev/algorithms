# http://www.codewars.com/kata/546e2562b03326a88e000020
# --- iteration 1 ---
def square_digits num
  # code goes here
  result = ""
  num.to_s.chars.each { |x| result += (x.to_i ** 2).to_s }
  result.to_i
end

