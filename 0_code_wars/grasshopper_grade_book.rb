# http://www.codewars.com/kata/55cbd4ba903825f7970000f5
# --- iteration 1 ---
def get_grade(s1, s2, s3)
  numeric_grade = (s1 +  s2 + s3) / 3.0
  grades = { 90..100 => "A",
             80..89 => "B",
             70..79 => "C",
             60..69 => "D",
             0..59 => "F"
           }
 grades.each do |k, v|
   return v if k === numeric_grade.to_i
 end
end

