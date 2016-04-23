# http://www.codewars.com/kata/552e45cc30b0dbd01100001a
# --- iteration 1 ---
def zipvalidate(postcode)
  puts postcode
  /\A[123460]\d{5}\Z/ === postcode
end

# --- iteration 2 ---
def zipvalidate(code)
  /\A[1-46]\d{5}\Z/ === code
end

# --- iteration 3 ---
def zipvalidate(code)
  /\A[1-46]\d{5}\z/ === code
end

