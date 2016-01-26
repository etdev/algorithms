# http://www.codewars.com/kata/567bf4f7ee34510f69000032
# --- iteration 1 ---
class String
  def digit?
    (self.length == 1 && self =~ /[0-9]/) ? true : false
  end
end

# --- iteration 2 ---
class String
  def digit?
    !!(self =~ /\A\d\z/)
  end
end

# --- iteration 3 ---
class String
  def digit?
    (self =~ /\A\d\z/) ? true : false
  end
end

# --- iteration 4 ---
class String
  def digit?
    return true if self =~ /\A\d\z/
    false
  end
end

# --- iteration 5 ---
class String
  def digit?
    ("0".."9").include?(self)
  end
end

# --- iteration 6 ---
class String
  def digit?
    self != "X" && self.sub(/\d/, "X") == "X"
  end
end

# --- iteration 7 ---
class String
  def digit?
    /\A\d\z/ === self
  end
end

