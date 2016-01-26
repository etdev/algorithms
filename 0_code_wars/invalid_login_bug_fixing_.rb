# http://www.codewars.com/kata/55e4c52ad58df7509c00007e
# --- iteration 1 ---
def validate(username, password)
  return "Wrong username or password!" if password =~ /(\|\||\\\\)/
  validator = Validator.new
  validator.login(username, password)
end

