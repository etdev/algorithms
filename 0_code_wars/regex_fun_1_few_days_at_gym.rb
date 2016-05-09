# http://www.codewars.com/kata/5720a81309e1f9b232001c5b/
# --- iteration 1 ---
def gym_slang(phrase)
  mappings = { 
    "probably" => "prolly",
    "i am" => "i'm",
    "instagram" => "insta",
    "do not" => "don't",
    "going to" => "gonna",
    "combination" => "combo"
  }
  
  phrase.gsub(/(#{mappings.keys.join("|")})/i) do |match|
     match[0] + mappings[match.downcase][1..-1]
  end
end
