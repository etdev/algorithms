# http://www.codewars.com/kata/5701e43f86306a615c001868
# --- iteration 1 ---
def getIssuer(number)
  case number.to_s.length
  when 15
    return "AMEX" if /\A3[47]/ === number.to_s
  when 16
    return "VISA" if /\A4/ === number.to_s
    return "Mastercard" if /\A5[1-5]/ === number.to_s
    return "Discover" if /\A6011/ === number.to_s
  when 13
    return "VISA" if /\A4/ === number.to_s
  end
  "Unknown"
end
