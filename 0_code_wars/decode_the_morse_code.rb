# http://www.codewars.com/kata/54b724efac3d5402db00065e
# --- iteration 1 ---
def decodeMorse(morse_code)
  morse_code.strip!
  morse_code.split(/\s/).map do |element|
    MORSE_CODE[element]
  end.join("|").gsub("|||", " ").gsub("|", "")
end

