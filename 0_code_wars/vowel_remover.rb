# http://www.codewars.com/kata/5547929140907378f9000039
# --- iteration 1 ---
def shortcut(s); s.tr("aeiou", ""); end

# --- iteration 2 ---
def shortcut(s)
  s.delete("aeiou")
end

# --- iteration 3 ---
def shortcut(s)
  s.chars.reject { |x| x =~ /[aeiou]/ }.join("")
end

