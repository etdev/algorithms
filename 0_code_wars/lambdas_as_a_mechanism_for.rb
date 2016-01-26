# http://www.codewars.com/kata/53574972e727385ad10002ca
# --- iteration 1 ---
spoken = ->(greeting) do
  greeting << "."
end

shouted = ->(greeting) do
  greeting.upcase << "!"
end

whispered = ->(greeting) do
  greeting.downcase << "."
end

greet = ->(style, msg) do
  style.call(msg)
end

# --- iteration 2 ---
spoken = ->(greeting) do
  greeting << "."
end

shouted = ->(greeting) do
  greeting.upcase << "!"
end

whispered = ->(greeting) do
  greeting.downcase << "."
end

greet = ->(style, msg) do
  style.(msg)
end

