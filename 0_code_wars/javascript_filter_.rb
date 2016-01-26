# http://www.codewars.com/kata/525d9b1a037b7a9da7000905
# --- iteration 1 ---
def search_names(logins)
  logins.select{ |(name, email)| name[-1] == "_" }
end

