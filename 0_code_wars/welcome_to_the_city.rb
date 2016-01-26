# http://www.codewars.com/kata/5302d846be2a9189af0001e4
# --- iteration 1 ---
def say_hello(name, city, state)
  "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

# --- iteration 2 ---
def say_hello(name, city, state)
  "Hello, %s! Welcome to %s, %s!" % [name.join(" "), city, state]
end

