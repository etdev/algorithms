def counter_effect(hit_count)
  return hit_count.chars.map{ |chr| [*0 .. chr.to_i] }
end
