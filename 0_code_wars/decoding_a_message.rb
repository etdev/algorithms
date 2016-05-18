# http://www.codewars.com/kata/565b9d6f8139573819000056/
# --- iteration 1 ---
def decode(message)
  message.chars.map do |chr|
    if chr == " "
      chr
    else
      (122 - chr.ord + 97).chr
    end
  end.join
end
