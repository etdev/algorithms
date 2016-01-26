# http://www.codewars.com/kata/536c738e49aa8b663b000301
# --- iteration 1 ---
def sum(*args)
  args.keep_if{ |arg| arg.kind_of?(Integer) }.reduce(:+)
end

