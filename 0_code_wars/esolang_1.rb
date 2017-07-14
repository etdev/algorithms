# https://www.codewars.com/kata/586dd26a69b6fd46dd0000c0/
def my_first_interpreter(code)
  mem, result = 0, []

  code.chars.each do |instruction|
    if instruction == "+"
      mem = ((mem + 1) % 256)
    elsif instruction == "."
      result << mem.chr
    end
  end

  result.join
end
