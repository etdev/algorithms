# http://www.codewars.com/kata/5355a811a93a501adf000ab7
# --- iteration 1 ---
def fizz_buzz_custom(string_1="Fizz", string_2="Buzz", num_1=3, num_2=5)
  arr = (1..100).to_a
  arr.map do |x|
    if (x%num_1 == 0 && x%num_2 == 0)
      "#{string_1}#{string_2}"
    elsif (x%num_1 == 0)
      string_1
    elsif (x%num_2 == 0)
      string_2
    else
      x
    end
  end
end

