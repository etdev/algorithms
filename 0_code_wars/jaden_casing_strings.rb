# http://www.codewars.com/kata/5390bac347d09b7da40006f6/
# --- iteration 1 ---
class String
  def toJadenCase
    split(" ").map(&:capitalize).join(" ")
  end
end

# --- iteration 2 ---
class String
  def toJadenCase
    gsub(/(?<=\A|\s)(\w+)/, &:capitalize)
  end
end
