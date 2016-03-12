# http://www.codewars.com/kata/552e45cc30b0dbd01100001a/
# --- iteration 1 ---
def zipvalidate(postcode)
  /\A[123460]\d{5}\Z/ === postcode
end
# --- iteration 2 ---
def zipvalidate(code)
  /\A[1-46]\d{5}\z/ === code
end
