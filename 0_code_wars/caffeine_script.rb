# http://www.codewars.com/kata/5434283682b0fdb0420000e6
# --- iteration 1 ---
def caffeineBuzz(n)
  if n % 3 == 0 && n % 4 == 0
     str = "Coffee"
  elsif n % 3 == 0
    str = "Java"
  end
  return "mocha_missing!" unless str
  n.even? ? str << "Script" : str
end

# --- iteration 2 ---
def caffeineBuzz(n)
  str = "Coffee" if n % 12 == 0
  str ||= "Java" if n % 3 == 0
  return "mocha_missing!" unless str
  n.even? ? str << "Script" : str
end

