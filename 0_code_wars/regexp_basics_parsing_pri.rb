# http://www.codewars.com/kata/56833b76371e86f8b6000015
# --- iteration 1 ---
class String
  def to_cents
    /\A\$(?<dols>\d+)\.(?<cents>\d+)\z/ =~ self ? (dols + cents).to_i : nil
  end
end

# --- iteration 2 ---
class String
  def to_cents
    /\A\$(?<dols>\d+)\.(?<cents>\d{2})\z/ =~ self ? (dols + cents).to_i : nil
  end
end

