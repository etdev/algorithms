# first attempt
def lcm(*args)
  return 0 if args.include?(0)
  return args[0] if args.size == 1
  return lcm2(*args) if args.size == 2
  lcm2(args[0], lcm(*args[1..-1]))
end

def lcm2(a, b)
  gcd, tmp = a, b

  until tmp == 0
     gcd, tmp = tmp, gcd % tmp
  end

  a * (b / gcd)
enddef lcm(*args)
  return 0 if args.include?(0)
  (1..(1/0.0)).each{ |i| return i if args.all? { |a| i % a == 0 } }
end

# infinite range
def lcm(*args)
  return 0 if args.include?(0)
  (1..(1/0.0)).each{ |i| return i if args.all? { |a| i % a == 0 } }
end

# using the standard library
def lcm(*args)
  args.reduce(&:lcm)
end
