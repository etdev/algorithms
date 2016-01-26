# http://www.codewars.com/kata/562d8d4c434582007300004e
# --- iteration 1 ---
def obfuscate(email)
  email.gsub(/(?:@|\.)/, { "@" => " [at] ", "." => " [dot] " })
end

# --- iteration 2 ---
def obfuscate(e)
  e.gsub!(/[@\.]/, "@" => " [at] ", "." => " [dot] ")
end

