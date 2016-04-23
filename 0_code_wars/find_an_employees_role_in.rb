# http://www.codewars.com/kata/55c9fb1b407024afe6000055
# --- iteration 1 ---
def find_employees_role(name)
  $employees.each do |employee|
    return employee["role"] if employee.values_at("first_name", "last_name").join(" ") == name
  end
  "Does not work here!"
end

