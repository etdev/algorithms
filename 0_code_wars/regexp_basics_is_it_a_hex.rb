# http://www.codewars.com/kata/567c9f56d83baeed8300000f
# --- iteration 1 ---
class String
  def hex_number?
    return false if self.empty? || self == "0x"
    self.upcase.gsub(/\A0X/, "").tr("0-9A-F", "").empty?
  end
end

# --- iteration 2 ---
class String
  def hex_number?
    /\A(?:0x)?[0-9A-F]+\z/i === self
  end
end

