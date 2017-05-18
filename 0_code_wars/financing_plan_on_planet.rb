def finance(n)
  (0..n).map{ |a| a * 2 }
    .map{ |s| (s..n + (s/2)).reduce(:+) }
    .reduce(:+)
end
