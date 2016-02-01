# http://www.codewars.com/kata/567de8823fa5eee02100002a
# --- iteration 1 ---
class String
  def whitespace?
    !(/\S/ === self)
  end
end

# --- iteration 2 ---
class String
  def whitespace?
    /\A\s*\z/ === self
  end
end

# --- iteration 3 ---
class String
  def whitespace?
    !(/\S/ =~ self)
  end
end

