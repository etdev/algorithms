# http://www.codewars.com/kata/56a25ba95df27b7743000016
# --- iteration 1 ---
def validate_code(code)
  /\A[1-3]/ === code.to_s
end

# --- iteration 2 ---
def validate_code(code)
  !!code.to_s[/\A[1-3]/]
end

