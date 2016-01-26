# http://www.codewars.com/kata/54dba07f03e88a4cec000caf
# --- iteration 1 ---
class Dog
  def initialize(breed)
    @breed = breed
  end
end

snoopy=Dog.new("Beagle")

def snoopy.bark()
  "Woof"
end

scoobydoo=Dog.new("Great Dane")

def scoobydoo.bark()
  "Woof"
end

