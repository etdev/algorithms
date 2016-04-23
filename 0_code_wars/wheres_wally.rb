# http://www.codewars.com/kata/55f91a98db47502cfc00001b
# --- iteration 1 ---
def wheres_wally(string)
  string =~ /(?<=\A|\s)Wally(?=\W|\z)/ || -1
end

# --- iteration 2 ---
def wheres_wally(str)
  str =~ /(?<=\A|\s)Wally(?=\b)/ || -1
end

