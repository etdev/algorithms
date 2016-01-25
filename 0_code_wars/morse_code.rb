# http://www.codewars.com/kata/54b724efac3d5402db00065e/
# --- iteration 1 ---
def decodeMorse(morse_code)
  morse_code.strip!
  morse_code.split(/\s/).map do |element|
    MORSE_CODE[element]
  end.join("|").gsub("|||", " ").gsub("|", "")
end

# I struggled with this one (clearly).  I couldn't find an elegant way to deal 
# with ["S", " ", " ", "O", " ", " ", "S"] vs. ["S", "O", "S"],
# which is why I used the "|" hack although I could've just used spaces.
# I keep trying to do things like this:
=begin
  def decodeMorse(morse_code)
    morse_code.scan(/[-\.]+/).map{ |x| MORSE_CODE[x] }.join(" ")
  end
=end
# but it loses the locations of the original spaces.
# I think the key is realizing 
