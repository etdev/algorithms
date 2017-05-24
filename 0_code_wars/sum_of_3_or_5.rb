def find(n)
  (0..n).reduce{ |a, i| (i % 3 == 0|| i % 5 == 0) ? a + i : a }
end
