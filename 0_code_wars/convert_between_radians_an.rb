# http://www.codewars.com/kata/544e2c60908f2da03600022a
# --- iteration 1 ---
module Math
  def self.degrees(rads)
    result = (rads * 180.0 / Math::PI).round(2)
    result % 1 == 0 ? "#{result.to_i}deg" : "#{result}deg"
  end

  def self.radians(degs)
    result = (degs / 180.0 * Math::PI).round(2)
    result % 1 == 0 ? "#{result.to_i}rad" : "#{result}rad"
  end
end

