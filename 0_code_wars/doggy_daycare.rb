# http://www.codewars.com/kata/56951add53eccacf44000030/
# --- iteration 1 ---
class Dog
  def check_dog
    case [vaccinated, wormed].count(true)
    when 1 then "#{name} can only be accepted by itself"
    when 2 then "#{name} can be accepted"
    else "#{name} can not be accepted"
    end
  end
end
