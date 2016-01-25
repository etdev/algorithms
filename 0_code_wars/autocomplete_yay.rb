# http://www.codewars.com/kata/5389864ec72ce03383000484
# --- iteration 1 ---
def autocomplete(input, dictionary)
  input.gsub!(/[^[a-zA-Z]]/, "")
  dictionary.select{ |word| word.downcase.start_with?(input.downcase) }.first(5)
end

# problems
# * gsub isn't as performant as delete, etc (and we're mutating the string anyway)
# * select is iterating through the whole dictionary every time; needs to be lazy
# --- iteration 2 ---
def autocomplete(input, dictionary)
  input.delete!("^a-zA-Z")
  dictionary.lazy.select{ |word| word.downcase.start_with?(input.downcase) }.first(5)
end

# --- iteration 3 ---
def autocomplete(input, dictionary)
  input.delete!("^a-zA-Z")
  dictionary.lazy.grep(/\A#{input}/i).first(5)
end

# this is the top solution on CodeWars at the time of writing, and for good reason.
