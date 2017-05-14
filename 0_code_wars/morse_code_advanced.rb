# https://www.codewars.com/kata/54b72c16cd7f5154e9000457
def decodeBits(bits)
  bits = bits.sub(/^0+(?=1)/, "").sub(/(?<=1)0+$/, "")
  len = [*bits.scan(/1+/), *bits.scan(/0+/)].min_by(&:size).size
  bits = normalize_bits(bits, len)
  words = bits.split(/0{7}/)
  letters = words.map{ |w| w.split(/0{3}/)
    .map{ |l| l.split("0").map{ |j| j.gsub(/111?/, "-").gsub(/1/, ".") }.join }.join(" ") }
    .join("   ")
end

def decodeMorse(morse)
  words = morse.split("   ")
  letters = words.map{ |w| w.split(" ").map{ |l| MORSE_CODE[l] }.join }.join(" ")
  letters.strip
end

def normalize_bits(bits, len)
  bits.chars.each_slice(len).reduce("") { |acc, el| acc << el[0] }
end
