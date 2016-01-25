# http://www.codewars.com/kata/5390bac347d09b7da40006f6/
# --- iterations ---
class String
  def to_jaden_case
    split(" ").map(&:capitalize).join(" ")
  end
end

class String
  def to_jaden_case
    gsub(/(?<=\A|\s)(\w+)/, &:capitalize)
  end
end
