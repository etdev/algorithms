# http://www.codewars.com/kata/515e188a311df01cba000003
# --- iteration 1 ---
def get_planet_name(id)
  name = case id
         when 1
           "Mercury"
         when 2
           "Venus"
         when 3
           "Earth"
         when 4
           "Mars"
         when 5
           "Jupiter"
         when 6
           "Saturn"
         when 7
           "Uranus"
         when 8
           "Neptune"
  end
end

# --- iteration 2 ---
def get_planet_name(id)
  case name = id
    when 1 then "Mercury"
    when 2 then "Venus"
    when 3 then "Earth"
    when 4 then "Mars"
    when 5 then "Jupiter"
    when 6 then "Saturn"
    when 7 then "Uranus"
    when 8 then "Neptune"
  end
end

