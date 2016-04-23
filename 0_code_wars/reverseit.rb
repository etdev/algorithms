# http://www.codewars.com/kata/557a2c136b19113912000010
# --- iteration 1 ---
def reverse_it(data)
  if data.is_a?(String)
    data.to_s.reverse
  elsif data.is_a?(Integer)
    data.to_s.reverse.to_i
  elsif data.is_a?(Float)
    data.to_s.reverse.to_f
  else
    data
  end
end

# --- iteration 2 ---
def reverse_it(d)
  types = { "Float" => :to_f, "Fixnum" => :to_i, "String" => :to_s }
  types.key?(d.class.to_s) ? d.to_s.reverse.send(types[d.class.to_s]) : d
end

