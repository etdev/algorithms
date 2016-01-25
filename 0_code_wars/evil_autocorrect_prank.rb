# http://www.codewars.com/kata/evil-autocorrect-prank/
# --- iteration 1 ---
def autocorrect(message)
  message.gsub(/\b(you+|u)\b/i, "your sister")
end
