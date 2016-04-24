# http://www.codewars.com/kata/567ed73340895395c100002e
# --- iteration 1 ---
class String
  def signed_eight_bit_number?
    puts self.inspect
    return false if self.size > 1 && ["0", "+"].include?(self[0])
    return false if self.delete("^0-9 ").empty?
    return false if self[0,2] == "-0"
    return false unless self.to_i >= -128 && self.to_i <= 127
    return false unless self =~ /\A[-+0-9]+\z/
    return false if self.count("-").to_i > 1 || self.count("+").to_i > 1
    true
  end
end

# --- iteration 2 ---
class String
  def signed_eight_bit_number?
    (-128..127).map(&:to_s).include?(self)
  end
end

