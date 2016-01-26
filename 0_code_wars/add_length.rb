# http://www.codewars.com/kata/559d2284b5bb6799e9000047
# --- iteration 1 ---
def add_length(str)
  str.split.map{ |x| [x, x.length].join(" ") }
end

# --- iteration 2 ---
def add_length(str)
  str.split.reduce([]){ |acc, el| acc << "#{el} #{el.length}" }
end

# --- iteration 3 ---
def add_length(str)
  str.split.map{ |x| "#{x} #{x.size}" }
end

