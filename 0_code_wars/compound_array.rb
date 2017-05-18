def compound_array(a, b)
  a.zip(b)
   .flatten
   .concat(b[a.size..-1] || [])
   .compact
end
