# http://www.codewars.com/kata/525f3eda17c7cd9f9e000b39/train/ruby
# --- Iteration 1 ---
def zero(block = nil)
  @zero ||= 0.0
  if block
    return block.call(@zero)
  end
  @zero
end

def one(block = nil)
  @one ||= 1.0
  if block
    return block.call(@one)
  end
  @one
end

def two(block = nil)
  @two ||= 2.0
  if block
    return block.call(@two)
  end
  @two
end

def three(block = nil)
  @three ||= 3.0
  if block
    return block.call(@three)
  end
  @three
end

def four(block = nil)
  @four ||= 4.0
  if block
    return block.call(@four)
  end
  @four
end

def five(block = nil)
  @five ||= 5.0
  if block
    return block.call(@five)
  end
  @five
end

def six(block = nil)
  @six ||= 6.0
  if block
    return block.call(@six)
  end
  @six
end

def seven(block = nil)
  @seven ||= 7.0
  if block
    return block.call(@seven)
  end
  @seven
end

def eight(block = nil)
  @eight ||= 8.0
  if block
    return block.call(@eight)
  end
  @eight
end

def nine(block = nil)
  @nine ||= 9.0
  if block
    return block.call(@nine)
  end
  @nine
end

def plus(arg)
  ->(other) {arg + other}
end

def minus(arg)
  ->(other) {other - arg}
end

def times(arg)
  ->(other) {other * arg}
end

def divided_by(arg)
  ->(other) {other / arg}
end

# --- Iteration 2 ---
# setup data
nums = (0..9).map(&:to_f)
word_nums = %i(zero one two three four five six seven eight nine)
nums_to_words = Hash[word_nums.zip(nums)]

ops = {plus: :+, minus: :-, times: :*, divided_by: :/}

# define "zero", "one", ... methods
nums_to_words.each do |word_num, num|
  define_method(word_num) { |block = nil| block ? block.call(num) : num }
end

# define "plus", "minus", ... methods
ops.each do |op_name, op|
  define_method(op_name){|arg| ->(other){ other.send(op, arg)}}
end
