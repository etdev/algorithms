# http://www.codewars.com/kata/53844152aa6fc137d8000589
# --- iteration 1 ---
def always(n=nil)
  -> { n }
end

# http://www.codewars.com/kata/564057bc348c7200bd0000ff
# --- iteration 1 ---
def thirt(n)
  vals = []
  until vals.uniq != vals
    digits = n.to_s.chars.map(&:to_i).compact
    multipliers = [1, 10, 9, 12, 3, 4].cycle.first(digits.size)
    current = digits.reverse.zip(multipliers).reduce(0){ |acc, (x, y)|  acc + x*y }
    vals << current
    n = current
  end
  n
end

n?(x)
  x % 7 == 0
end

# --- iteration 2 ---
def seven(m, cnt = 0)
  x, y = m.divmod(10)
  if m < 100
    return [m, cnt]
  else
    seven(x - 2*y, cnt + 1)
  end
end

# --- iteration 3 ---
def seven(m, c=0)
  m < 100 ? [m, c] : seven(m.divmod(10)[0] - 2*m.divmod(10)[1], c+1)
end

# --- iteration 4 ---
def seven(m, step = 0)
  x, y = m.divmod(10)
  m < 100 ? [m, step] : seven(x - 2*y, step + 1)
end

# http://www.codewars.com/kata/564057bc348c7200bd0000ff/
# --- iteration 1 ---
def thirt(n)
  vals = []
  until vals.uniq != vals
    digits = n.to_s.chars.map(&:to_i).compact
    multipliers = [1, 10, 9, 12, 3, 4].cycle.first(digits.size)
    current = digits.reverse.zip(multipliers).reduce(0){ |acc, (x, y)|  acc + x*y }
    vals << current
    n = current
  end
  n
end
# http://www.codewars.com/kata/55e6f5e58f7817808e00002e
# --- iteration 1 ---
@count = 0

def seven(m)
  y, x = [m.to_s[-1], m.to_s[0...-1]].map(&:to_i)
  new_m = x - 2*y
  if m.to_s.size <= 2
    count_temp = @count
    @count = 0
    return [m, count_temp]
  else divisible_by_seven?(m) && m.to_s.size == 2
    @count += 1
    seven(new_m)
  end
end

def divisible_by_seven?(x)
  x % 7 == 0
end

# --- iteration 2 ---
def seven(m, cnt = 0)
  x, y = m.divmod(10)
  if m < 100
    return [m, cnt]
  else
    seven(x - 2*y, cnt + 1)
  end
end

# --- iteration 3 ---
def seven(m, c=0)
  m < 100 ? [m, c] : seven(m.divmod(10)[0] - 2*m.divmod(10)[1], c+1)
end

# --- iteration 4 ---
def seven(m, step = 0)
    x, y = m.divmod(10)
    m < 100 ? [m, step] : seven(x - 2*y, step + 1)
end
# http://www.codewars.com/kata/51f193ccbfb321860d00040d
# --- iteration 1 ---
class Hash
  def method_missing(symbol, *args)
    return super(symbol, *args) unless symbol[0] == "_"
    symbol = symbol[1..-1].tr("=", "").to_sym
    if (!has_key?(symbol)) && (!has_key?(symbol.to_s))
      if args.any?
        self[symbol.to_s.to_sym] = args.first
      end
      return nil
    elsif has_key?(symbol)
      if args.length > 0
        self[symbol] = args.first
        return args.first
      else
        return self[symbol]
      end
    else
      if args.any?
        self[symbol.to_s] = args.first
        return args.first
      else
        return self[symbol.to_s]
      end
    end
  end
end

# http://www.codewars.com/kata/559d2284b5bb6799e9000047
# --- iteration 1 ---
def add_length(str)
  str.split.map{ |x| [x, x.length].join(" ") }
end

# --- iteration 2 ---
def add_length(str)
  str.split.reduce([]){ |acc, el| acc << "#{el} #{el.length}" }
end

# --- iteration 3 ---
def add_length(str)
  str.split.map{ |x| "#{x} #{x.size}" }
end

# http://www.codewars.com/kata/54eea36b7f914221eb000e2f
# --- iteration 1 ---
def sort_it(list, n)
  list.split(", ").sort_by{ |l| l[n-1] }.join(", ")
end

# http://www.codewars.com/kata/559d7951ce5e0da654000073
# --- iteration 1 ---
def alternate_sq_sum(arr)
  arr.map!.with_index { |x, i| i.even? ? x : x ** 2 }
    .reduce(0, :+)
end


# http://www.codewars.com/kata/56efc695740d30f963000557/
# --- iteration 1 ---
class String
  def to_alternating_case
    self.swapcase
  end
end

# --- iteration 2 ---
class String
  def to_alternating_case
    swapcase
  end
end
# http://www.codewars.com/kata/56efc695740d30f963000557
# --- iteration 1 ---
class String
  def to_alternating_case
    self.swapcase
  end
end

# --- iteration 2 ---
class String
  def to_alternating_case
    swapcase
  end
end

# http://www.codewars.com/kata/always-perfect/
# --- iteration 1 ---
def check_root(str)
  return "incorrect input" unless /\A-?\d+,-?\d+,-?\d+,-?\d+\z/ === str
  nums = str.split(",").map(&:to_i)
  return "not consecutive" unless (nums.first..nums.last).to_a == nums
  sum = nums.reduce(:*) + 1
  "#{sum}, #{Math.sqrt(sum).to_i}"
end
# http://www.codewars.com/kata/529eef7a9194e0cbc1000255
# --- iteration 1 ---
def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

# http://www.codewars.com/kata/546274b0eaa31f79c9000d5d
# --- iteration 1 ---
def isAnagram(test, orig)
  test_cleaned, orig_cleaned = [test, orig].map do |s|
    s.downcase.delete("^a-z0-9").chars.sort.join
  end
  test_cleaned == orig_cleaned
end

# http://www.codewars.com/kata/559f860f8c0d6c7784000119
# --- iteration 1 ---
def any_arrows(arrows)
  arrows.group_by{ |hsh| hsh["damaged"] ? "damaged" : "undamaged" }["undamaged"] != nil
end

# http://www.codewars.com/kata/53af2b8861023f1d88000832
# --- iteration 1 ---
def are_you_playing_banjo(name)
  name[0].upcase == "R" ? "#{name} plays banjo" : "#{name} does not play banjo"
end

# http://www.codewars.com/kata/537baa6f8f4b300b5900106c
# --- iteration 1 ---
def circle_area(r)
  (r.kind_of?(Numeric) && r > 0) ? (r.to_f ** 2 * Math::PI).round(2) : false
end

# http://www.codewars.com/kata/541da001259d9ca85d000688
# --- iteration 1 ---
def seqlist(f,c,l)
  [*f.step(f + (l - 1) * c, c)]
end

# --- iteration 2 ---
def seqlist(f,c,l)
  Array.new(l){ |i| f + i*c }
end

# --- iteration 3 ---
def seqlist(f,c,l)
  f.step(by: c).first(l)
end

# http://www.codewars.com/kata/523f5d21c841566fde000009
# --- iteration 1 ---
def array_diff(a, b)
  #your code here
  a - b
end

# http://www.codewars.com/kata/536c6f2349aa8b16520002e0
# --- iteration 1 ---
class Array
  def second
    self.[](1)
  end
end

# http://www.codewars.com/kata/5389864ec72ce03383000484
# --- iteration 1 ---
def autocomplete(input, dictionary)
  input.gsub!(/[^[a-zA-Z]]/, "")
  dictionary.select{ |word| word.downcase.start_with?(input.downcase) }.first(5)
end

# problems
# * gsub isn't as performant as delete, etc (and we're mutating the string anyway)
# * select is iterating through the whole dictionary every time; needs to be lazy
# --- iteration 2 ---
def autocomplete(input, dictionary)
  input.delete!("^a-zA-Z")
  dictionary.lazy.select{ |word| word.downcase.start_with?(input.downcase) }.first(5)
end

# --- iteration 3 ---
def autocomplete(input, dictionary)
  input.delete!("^a-zA-Z")
  dictionary.lazy.grep(/\A#{input}/i).first(5)
end

# this is the top solution on CodeWars at the time of writing, and for good reason.
# http://www.codewars.com/kata/53af2b8861023f1d88000832/
# --- iterations ---
def are_you_playing_banjo(name)
  name[0].upcase == "R" ? "#{name} plays banjo" : "#{name} does not play banjo"
end
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

# http://www.codewars.com/kata/511f0fe64ae8683297000001
# --- iteration 1 ---
websites << "codewars"

# http://www.codewars.com/kata/50ee6b0bdeab583673000025
# --- iteration 1 ---
a = "code"
b = "wa.rs"
name = a + b

# http://www.codewars.com/kata/55f2b110f61eb01779000053
# --- iteration 1 ---
def get_sum(a,b)
  return a if a == b
  ([a,b].min..[a,b].max).reduce(&:+)
end

# --- iteration 2 ---
def get_sum(a,b)
  a == b ? a : Range.new(*[a,b].sort).reduce(&:+)
end

# --- iteration 3 ---
def get_sum(a,b)
  Range.new(*[a,b].sort).reduce(&:+)
end

# http://www.codewars.com/kata/551f37452ff852b7bd000139
# --- iteration 1 ---
def add_binary(a,b)
  (a+b).to_s(2)
end

# --- iteration 2 ---
def add_binary(a,b)
  '%b' % (a+b)
end

# http://www.codewars.com/kata/546ba103f0cf8f7982000df4
# --- iteration 1 ---
OP_MAPPINGS = { "add" => :+, "subtract" => :-, "multiply" => :* }

def calculate(n1, n2, op)
  (eval("0b#{n1}")).send(OP_MAPPINGS[op], eval("0b#{n2}")).to_i.to_s(2)
end

# --- iteration 2 ---
def calculate(n1, n2, op)
  ops = { "add" => :+, "subtract" => :-, "multiply" => :* }
  n1.to_i(2).public_send(ops[op], n2.to_i(2)).to_s(2)
end

# http://www.codewars.com/kata/56cafdabc8cfcc3ad4000a2b
# --- iteration 1 ---
def score(n)
  n < 2 ? n : 2**Math.log(n, 2).ceil - 1
end

# --- iteration 2 ---
def score(n)
  n < 2 ? n : 2**(n.to_s(2).size) - 1
end
# http://www.codewars.com/kata/52b5247074ea613a09000164
# --- iteration 1 ---
def cooking_time(eggs)
  eggs.fdiv(8).ceil * 5
end

# http://www.codewars.com/kata/534ea96ebb17181947000ada
# --- iteration 1 ---
def break_chocolate(n, m)
  n*m >= 1 ? n*m - 1 : 0
end

# --- iteration 2 ---
def break_chocolate(n, m)
  [n * m - 1, 0].max
end

# http://www.codewars.com/kata/50654ddff44f800200000001
# --- iteration 1 ---
class Person
  def initialize(name)
    @name = name
  end

  def greet(other_name)
    "Hi #{other_name}, my name is #{@name}"
  end
end

# http://www.codewars.com/kata/5592e3bd57b64d00f3000047
# --- iteration 1 ---
def find_nb(m)
  count = cube_sum = 1
  until cube_sum >= m
    count += 1
    cube_sum += count ** 3
  end
  cube_sum == m ? count : -1
end

# --- iteration 2 ---
def find_nb(total_vol)
  cube_count = 1
  until total_vol <= 0
    total_vol -= cube_count ** 3
    cube_count += 1
  end
  total_vol == 0 ? cube_count-1 : -1
end

# http://www.codewars.com/kata/55b75fcf67e558d3750000a3/
# --- iteration 1 ---
class Block

  def initialize(args)
    @width, @length, @height = args
    @volume = args.reduce(:*)
    @surface_area = 2*(@width * @length + @length * @height + @height * @width)
  end

  def get_width
    @width
  end

  def get_length
    @length
  end

  def get_height
    @height
  end

  def get_volume
    @volume
  end

  def get_surface_area
    @surface_area
  end
end
# http://www.codewars.com/kata/51c7d8268a35b6b8b40002f2
# --- iteration 1 ---
def solution(pairs)
  pairs.map{ |k, v| "#{k} = #{v}" }.join(",")
end

# http://www.codewars.com/kata/5434283682b0fdb0420000e6/
# iteration 1
def caffeineBuzz(n)
  if n % 3 == 0 && n % 4 == 0
     str = "Coffee"
  elsif n % 3 == 0
    str = "Java"
  end
  return "mocha_missing!" unless str
  n.even? ? str << "Script" : str
end

# iteration 2
def caffeineBuzz(n)
  str = "Coffee" if n % 12 == 0
  str ||= "Java" if n % 3 == 0
  return "mocha_missing!" unless str
  n.even? ? str << "Script" : str
end
# http://www.codewars.com/kata/5434283682b0fdb0420000e6
# --- iteration 1 ---
def caffeineBuzz(n)
  if n % 3 == 0 && n % 4 == 0
     str = "Coffee"
  elsif n % 3 == 0
    str = "Java"
  end
  return "mocha_missing!" unless str
  n.even? ? str << "Script" : str
end

# --- iteration 2 ---
def caffeineBuzz(n)
  str = "Coffee" if n % 12 == 0
  str ||= "Java" if n % 3 == 0
  return "mocha_missing!" unless str
  n.even? ? str << "Script" : str
end

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
# http://www.codewars.com/kata/52a89c2ea8ddc5547a000863/
# --- iteration 1 ---
def loop_size(node)
  # tortoise, hare
  t = node
  h = node

  loop do
    t = t.next
    h = h.next.next
    break if t == h
  end

  node_count = 0

  loop do
    t = t.next
    node_count += 1
    break if t == h
  end

  node_count
end

# --- iteration 2 ---
# when you have access to the Linked List implementation
class Node
  attr_accessor :mark
end

def loop_size(node)
  idx = 0
  until node.mark
    node.mark = idx
    idx += 1
    node = node.next
  end
  idx - node.mark
end
# http://www.codewars.com/kata/55466644b5d240d1d70000ba/
# iteration 1
def candies(s)
  return -1 if s.count < 2
  max_count = s.max
  s.reduce(0) { |acc, current_count| acc + max_count - current_count }
end

# iteration 2
def candies(s)
  s.size < 2 ? -1 : s.max * s.size - s.reduce(&:+)
end
# http://www.codewars.com/kata/5590961e6620c0825000008f/
# --- iteration 1 ---
def swap(str)
  str.tr("a-zA-Z", "A-Za-z")
end

# --- iteration 2 ---
def swap(str)
  str.swapcase
end
# http://www.codewars.com/kata/5502c9e7b3216ec63c0001aa
# --- iteration 1 ---
def openOrSenior(data)
  data.map{ |arr| (arr[0] >= 55 && arr[1] > 7) ? "Senior" : "Open" }
end

# http://www.codewars.com/kata/54fb853b2c8785dd5e000957
# --- iteration 1 ---
def chain(value, functions)
  functions.reduce(value) do |acc, function|
    send(function, acc)
  end
end

# http://www.codewars.com/kata/character-concatenation/discuss/ruby

# --- iteration 1 ---
def char_concat(word)
  return "" if word.size < 2
  word_size_orig = word.size
  word.slice!(word.size/2) if word.size.odd?
  left, right = word.slice!(0...word.size/2), word
  left.chars.zip(right.chars.reverse).zip(1..word_size_orig/2).join
end

# --- iteration 2 ---
def char_concat(str)
  (1..str.size/2).reduce(""){ |a, n| a << str[n-1] << str[-n] << n.to_s }
end
# http://www.codewars.com/kata/56786a687e9a88d1cf00005d
# --- iteration 1 ---
def validate_word(word)
  word.downcase!
  word.chars.map{ |chr| word.count(chr) }.uniq.size == 1
end

# http://www.codewars.com/kata/57036f007fd72e3b77000023
# --- iteration 1 ---
class Solution
  def self.main(str)
    puts "Hello World!"
  end
end

# http://www.codewars.com/kata/55a14aa4817efe41c20000bc
# --- iteration 1 ---
class Cat < Animal
  def speak
    "#{@name} meows."
  end
end

# http://www.codewars.com/kata/54fb963d3fe32351f2000102
# --- iteration 1 ---
def collatz(n)
  count = 1
  loop do
    return count if n == 1
    n.even? ? n = n / 2 : n = (n*3) + 1
    count += 1
  end
end

# http://www.codewars.com/kata/53f1015fa9fe02cbda00111a
# --- iteration 1 ---
class Ghost
  # your code goes here
  attr_accessor:color

  def initialize
    @color = ["white", "yellow", "purple", "red"].sample
  end
end

# http://www.codewars.com/kata/56bd9e4b0d0b64eaf5000819
# --- iteration 1 ---
def combine(*objects)
  objects.reduce({}) do |acc, el|
    el.each do |k, v|
      if acc.key?(k)
        acc[k] += v
      else
        acc[k] = v
      end
    end
    acc
  end
end

# --- iteration 2 ---
def combine(*objects)
  objects.reduce{ |acc, obj| acc.merge(obj){ |k, o, n| o.to_i + n } }
end
# http://www.codewars.com/kata/common-substrings
# --- iteration 1 ---
def substring_test(str1, str2)
  return false unless str1.size > 1 && str2.size > 1
  puts "str1: #{str1.inspect}"
  puts "str2: #{str2.inspect}"
  str1_down, str2_down = [str1, str2].map(&:downcase)
  smaller, larger = [str1_down, str2_down].sort_by(&:size)
  substrings = []
  smaller.chars.each_with_index do |x, i|
    if i+1 < smaller.size
      substrings << smaller[i, 2]
    else
    end
  end
  substrings.each do |substr|
    return true if /#{substr}/ === larger
  end
  false
end

# --- iteration 2 ---
def substring_test(str1, str2)
  return false unless str1.size > 1 && str2.size > 1
  str1_down, str2_down = [str1, str2].map(&:downcase)
  smaller, larger = [str1_down, str2_down].sort_by(&:size)

  substrings = []

  smaller.chars.each_with_index do |x, i|
    if i+1 < smaller.size
      substrings << smaller[i, 2]
    else
    end
  end

  substrings.any? { |substr| /#{substr}/ === larger }
end

# --- iteration 3 ---
def substring_test(str1, str2)
  return false unless str1.size > 1 && str2.size > 1
  smaller, larger = [str1, str2].map(&:downcase).sort_by(&:size)

  substrings = []

  smaller.chars.each_with_index do |x, i|
    if i+1 < smaller.size
      substrings << smaller[i, 2]
    else
    end
  end

  substrings.any? { |substr| /#{substr}/ === larger }
end

# --- iteration 4 ---
def substring_test(str1, str2)
  sm, lg = [str1, str2].map(&:downcase).sort_by(&:size)
  sm.chars.each_cons(2).any? { |x| /#{x.join}/ === lg }
end
# http://www.codewars.com/kata/554e4a2f232cdd87d9000038
# --- iteration 1 ---
def DNA_strand(dna)
  dna.gsub(/[ACGT]/, { "A" => "T", "T" => "A", "G" => "C", "C" => "G" })
end

# --- iteration 2 ---
def DNA_strand(dna)
  dna.gsub(/[ATCG]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
end

# --- iteration 3 ---
def DNA_strand(dna)
  dna.tr("ATCG", "TAGC")
end

# http://www.codewars.com/kata/55733d3ef7c43f8b0700007c
# --- iteration 1 ---
def pattern(n)
  return "" if n < 1
  nums = n.downto(1).to_a
  return_str = nums.join("")
  (n-1).times do |i|
    nums.slice!(-1)
    return_str << "
#{nums.join("")}"
  end
  return_str
end

pattern(n)
  [*(1..n)].map{ |i| [*(i..n)].join }.join("
")
end

# --- iteration 3 ---
def pattern(n)
  (1..n).map{|i| [*(i..n)].join}.join("
")
end

# http://www.codewars.com/kata/55733d3ef7c43f8b0700007c
# --- iteration 1 ---
def pattern(n)
  return "" if n < 1
  nums = n.downto(1).to_a
  return_str = nums.join("")
  (n-1).times do |i|
    nums.slice!(-1)
    return_str << "
#{nums.join("")}"
  end
  return_str
end

pattern(n)
  [*(1..n)].map{ |i| [*(i..n)].join }.join("
")
end

# --- iteration 3 ---
def pattern(n)
  (1..n).map{|i| [*(i..n)].join}.join("
")
end

# http://www.codewars.com/kata/557341907fbf439911000022
# --- iteration 1 ---
def pattern(n)
  return "" unless n > 0
  nums = n.downto(1)
  (1.upto(n)).reduce([]){ |acc, i| acc << nums.first(i).join }.join("
")
end

# --- iteration 2 ---
def pattern(n)
  n.downto(1).map { |x| n.downto(x).to_a.join }.join("
")
end
# http://www.codewars.com/kata/557592fcdfc2220bed000042
# --- iteration 1 ---
def pattern(n)
  return "" if n < 1
  (0...n).map{ |i| (1..n).cycle(2).to_a.drop(i).first(n).join }.join("
")
end

# --- iteration 2 ---
def pattern(n)
  (0...n).reduce([]) do |acc, i|
    acc << [*1..n].rotate(i).join
  end.join("
")
end

# http://www.codewars.com/kata/55749101ae1cf7673800003e
# --- iteration 1 ---
def pattern(n)
  2.step(n, 2)
    .reduce([]){ |acc, el| acc << [el.to_s * el] }
    .join("
")
end

# --- iteration 2 ---
def pattern(n)
  (2..n).step(2).reduce([]) { |a, e| a << ["#{e}" * e] }.join("
")
end

# http://www.codewars.com/kata/557341907fbf439911000022
# --- iteration 1 ---
def pattern(n)
  return "" unless n > 0
  nums = n.downto(1)
  (1.upto(n)).reduce([]){ |acc, i| acc << nums.first(i).join }.join("
")
end

# --- iteration 2 ---
def pattern(n)
  n.downto(1).map { |x| n.downto(x).to_a.join }.join("
")
end

# http://www.codewars.com/kata/5574940eae1cf7d520000076
# --- iteration 1 ---
def pattern(n)
  [*(1..n)].keep_if(&:odd?).map{ |x| x.to_s * x }.join("
")
end

# --- iteration 2 ---
def pattern(n)
  1.step(n, 2).map{ |x| x.to_s * x }.join("
")
end

# --- iteration 3 ---
def pattern(n)
  (1..n).step(2).map{ |i| i.to_s*i }.join("
")
end




# http://www.codewars.com/kata/56a5d994ac971f1ac500003e
# --- iteration 1 ---
def longest_consec(str_arr, k)
  return "" if str_arr.size == 0 || str_arr.size < k || k <= 0
  max_length = 0
  max_combined_str = ""
  combined_strs = str_arr.each_cons(k).each do |str_ktuple|
    combined_str = str_ktuple.join
    if combined_str.length > max_length
      max_combined_str = combined_str
      max_length = combined_str.length
    end
  end
  max_combined_str
end

# --- iteration 2 ---
def longest_consec(str_arr, k)
  return "" if str_arr.size == 0 || str_arr.size < k || k <= 0
  str_arr.each_cons(k).map(&:join).max_by(&:size)
end

# http://www.codewars.com/kata/551b4501ac0447318f0009cd
# --- iteration 1 ---
def boolean_to_string(b)
  return "true" if b
  "false"
end

# --- iteration 2 ---
def boolean_to_string(b)
  b.to_s
end

# --- iteration 3 ---
def boolean_to_string(b)
  b ? "true" : "false"
end

# http://www.codewars.com/kata/5265326f5fda8eb1160004c8
# --- iteration 1 ---
def numberToString(num)
  "%d" % num
end

# http://www.codewars.com/kata/544675c6f971f7399a000e79
# --- iteration 1 ---
def string_to_number(s)
  s.to_i
end

# http://www.codewars.com/kata/544e2c60908f2da03600022a
# --- iteration 1 ---
module Math
  def self.degrees(rads)
    result = (rads * 180.0 / Math::PI).round(2)
    result % 1 == 0 ? "#{result.to_i}deg" : "#{result}deg"
  end

  def self.radians(degs)
    result = (degs / 180.0 * Math::PI).round(2)
    result % 1 == 0 ? "#{result.to_i}rad" : "#{result}rad"
  end
end

# http://www.codewars.com/kata/53369039d7ab3ac506000467
# --- iteration 1 ---
def bool_to_word(bool)
  bool ? "Yes" : "No"
end

# http://www.codewars.com/kata/53369039d7ab3ac506000467
# --- iteration 1 ---
def bool_to_word(bool)
  bool ? "Yes" : "No"
end

# http://www.codewars.com/kata/55606aeebf1f0305f900006f
# --- iteration 1 ---
def to_binary(n)
  if n < 0
    (n.abs - 1).to_s(2).chars.map{ |x| x == "0" ? "1" : "0" }.join.rjust(32, "1")
  else
    n.to_s(2)
  end
end

# http://www.codewars.com/kata/5583090cbe83f4fd8c000051
# --- iteration 1 ---
def digitize(n)
  n.to_s.chars.map(&:to_i).reverse
end

# http://www.codewars.com/kata/54e9554c92ad5650fe00022b
# --- iteration 1 ---
def to_currency(n)
  n.to_s.reverse.chars.each_slice(3).map(&:join).join(",").reverse
end

# --- iteration 2 ---
def to_currency(number)
  number.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

# http://www.codewars.com/kata/5513795bd3fafb56c200049e/
# --- iterations ---
def count_by(x, n)
  Array.new(n) { |i| (i+1) * x }
end

def count_by(x, n)
  (1..n).map{ |i| i*x }
end

def count_by(x, n)
  x.step(n*x, x).to_a
end

def count_by(x, n)
  x.step(by: x).take(n)
end

def count_by(x, n)
  (1..n).map{ |i| i*x }
end
# http://www.codewars.com/kata/564e7fc20f0b53eb02000106
# --- iteration 1 ---
def consonant_count(str)
  str.downcase.count("bcdfghjklmnpqrstvwxyz")
end

# http://www.codewars.com/kata/566fc12495810954b1000030
# --- iteration 1 ---
def nb_dig(n, d)
  (0..n).reduce("") do |k_arr, k|
    k_arr << (k * k).to_s
  end.count(d.to_s)
end

# http://www.codewars.com/kata/56f69d9f9400f508fb000ba7
# --- iteration 1 ---
def monkey_count(n)
  [*1..n]
end

# http://www.codewars.com/kata/5519e930cd82ff8a9a000216
# --- iteration 1 ---
def hamming_weight(x)
  x.to_s(2).delete("0").length
end

# --- iteration 2 ---
def hamming_weight(x)
  return x if x < 2
  x % 2 + hamming_weight(x / 2)
end

# http://www.codewars.com/kata/55b95c76e08bd5eef100001e
# --- iteration 1 ---
def count_arara(n)
  ("adak " * (n / 2) << "anane" * (n % 2)).rstrip
end

# http://www.codewars.com/kata/54381f0b6f032f933c000108
# --- iteration 1 ---
def powers(list)
  # Program me!
  2 ** list.size
end

# http://www.codewars.com/kata/54edbc7200b811e956000556
# --- iteration 1 ---
def countSheeps(arr)
  arr.reduce(0) { |acc, el| el == true ? acc + 1 : acc }
end

# --- iteration 2 ---
def countSheeps(arr)
  arr.count(true)
end

# --- iteration 3 ---
def countSheeps(arr)
  arr.reject(&:!).length
end

# http://www.codewars.com/kata/53e8ab878f9e6658410002af
# --- iteration 1 ---
def list_in_range(hsh, range)
  hsh.select{ |k, v| range === v }
    .sort_by{ |k, v| v }
    .reduce([]) { |acc, (name, num_val)|
    acc << "#{name} (#{num_val})"
  }.join(", ")
end

# http://www.codewars.com/kata/5701e43f86306a615c001868
# --- iteration 1 ---
def getIssuer(number)
  case number.to_s.length
  when 15
    return "AMEX" if /\A3[47]/ === number.to_s
  when 16
    return "VISA" if /\A4/ === number.to_s
    return "Mastercard" if /\A5[1-5]/ === number.to_s
    return "Discover" if /\A6011/ === number.to_s
  when 13
    return "VISA" if /\A4/ === number.to_s
  end
  "Unknown"
end
# http://www.codewars.com/kata/5412509bd436bd33920011bc
# --- iteration 1 ---
def maskify(cc)
  cc.length > 4 ? cc[-4,4].rjust(cc.length, "#") : cc
end

# http://www.codewars.com/kata/56f6919a6b88de18ff000b36
# --- iteration 1 ---
def how_many_dalmatians(number)
  dogs = ["Hardly any", "More than a handful!", "Woah that's a lot of dogs!", "101 DALMATIONS!!!"]
  number <= 10 ? dogs[0] : (number <= 50 ? dogs[1] : (number == 101 ? dogs[3] : dogs[2]))
end

# http://www.codewars.com/kata/56d6c333c9ae3fc32800070f/
# --- iteration 1 ---
def year_days(year)
   if year % 400 == 0
    "#{year} has 366 days"
  elsif year % 100 == 0
    "#{year} has 365 days"
  elsif year % 4 == 0
    "#{year} has 366 days"
  else
    "#{year} has 365 days"
  end
end
# http://www.codewars.com/kata/5612a42e746aa62de100001a
# --- iteration 1 ---
def dBScale(i)
  (Math.log10(i.to_f*(10**12))*10).round
end

# http://www.codewars.com/kata/54b724efac3d5402db00065e
# --- iteration 1 ---
def decodeMorse(morse_code)
  morse_code.strip!
  morse_code.split(/\s/).map do |element|
    MORSE_CODE[element]
  end.join("|").gsub("|||", " ").gsub("|", "")
end

# http://www.codewars.com/kata/54b724efac3d5402db00065e
# --- iteration 1 ---
def decodeMorse(morse_code)
  morse_code.strip!
  morse_code.split(/\s/).map do |element|
    MORSE_CODE[element]
  end.join("|").gsub("|||", " ").gsub("|", "")
end

# http://www.codewars.com/kata/565b9d6f8139573819000056/
# --- iteration 1 ---
def decode(message)
  message.chars.map do |chr|
    if chr == " "
      chr
    else
      (122 - chr.ord + 97).chr
    end
  end.join
end
# http://www.codewars.com/kata/555de49a04b7d1c13c00000e
# --- iteration 1 ---
def add(*args)
  args.map.with_index(1).reduce(0) do |acc, (el, i)|
    acc + el.fdiv(i)
  end.round
end

# http://www.codewars.com/kata/5506b230a11c0aeab3000c1f
# --- iteration 1 ---
def evaporator(content, evap_per_day, threshold)
  day = 0
  remaining_per = 100
  loop do
    day += 1
    remaining_per = remaining_per * (1-evap_per_day.fdiv(100))
    return day if remaining_per < threshold
  end
end


# http://www.codewars.com/kata/5467e4d82edf8bbf40000155
# --- iteration 1 ---
def descending_order(n)
  n.to_s.chars.sort.join("").reverse.to_i
end

# --- iteration 2 ---
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

# --- iteration 3 ---
def descending_order(n)
  n.to_s.chars.sort!.reverse!.join.to_i
end

# --- iteration 4 ---
def descending_order(n)
  n.to_s.scan(/./).sort!.reverse!.join.to_i
end

# http://www.codewars.com/kata/56a4addbfd4a55694100001f/
# --- iteration 1 ---
@hallos = %w(hello ciao salut hallo hola ahoj czesc)

def validate_hello(greetings)
  @hallos.each do |hallo|
    return true if /#{hallo}/ === greetings.downcase
  end
  false
end

# --- iteration 2 ---
def validate_hello(greetings)
  /hello|ciao|salut|hallo|hola|ahoj|czesc/i === greetings
end
# http://www.codewars.com/kata/55e3f27d5dee52d8dd0000a9
# --- iteration 1 ---
def diff_big_2(arr)
  arr.slice!(arr.index(arr.max)) - arr.slice!(arr.index(arr.max))
end

# --- iteration 2 ---
def diff_big_2(arr)
  arr.slice!(arr.index(arr.max)) - arr.max
end

# http://www.codewars.com/kata/5417423f9e2e6c2f040002ae
# --- iteration 1 ---
def digitize(n)
  n.to_s.chars.map(&:to_i)
end

# http://www.codewars.com/kata/550f22f4d758534c1100025a/train/ruby
# --- iteration 1 ---
REDUCEABLE_OPTS = [["EAST","WEST"], ["WEST","EAST"], ["NORTH","SOUTH"], ["SOUTH","NORTH"]]

def dirReduc(dirs)  while reduceable?(dirs) do
    dirs = reduce_pair(dirs)
  end
  dirs
end

def reduceable?(dirs)	dirs.each_cons(2).with_index do |sl, i|
    if REDUCEABLE_OPTS.include?(sl)
      return true
    end
  end
  false
end

def reduce_pair(dirs)	dirs.each_cons(2).with_index do |sl, i|
    if REDUCEABLE_OPTS.include?(sl)
      dirs.delete_at(i)
      dirs.delete_at(i)
      return dirs
    end
  end
end

# --- iteration 2 ---
def dirReduc(dirs)
  loop do
    dirs_old = dirs.dup
    dirs = reduce_pair(dirs)
    break if dirs_old == dirs
  end
  dirs
end

def reduce_pair(dirs)
  dirs.each_cons(2).with_index do |sl, i|
    if [["EAST","WEST"], ["WEST","EAST"], ["NORTH","SOUTH"], ["SOUTH","NORTH"]].include?(sl)
      2.times{ dirs.delete_at(i) }
      return dirs
    end
  end
  dirs
end

# --- ieration 3 ---
OPPOSITES = { "EAST" => "WEST",
              "WEST" => "EAST",
              "NORTH" => "SOUTH",
              "SOUTH" => "NORTH"
            }

def dirReduc(dirs)
  dirs.each_with_object([]) do |dir, path|
    OPPOSITES[dir] == (path.last) ? path.pop : path.push(dir)
  end
end
# http://www.codewars.com/kata/52fba66badcd10859f00097e/
# --- iterations ---
def disemvowel(str)
  str.delete("aeiouAEIOU")
end
# http://www.codewars.com/kata/52fba66badcd10859f00097e
# --- iteration 1 ---
def disemvowel(str)
  str.delete("aeiouAEIOU")
end

# http://www.codewars.com/kata/5556282156230d0e5e000089
# --- iteration 1 ---
def DNAtoRNA(dna)
  dna.gsub("T", "U")
end

# --- iteration 2 ---
def DNAtoRNA(dna)
  dna.tr("T", "U")
end

# http://www.codewars.com/kata/56f6ad906b88de513f000d96/
# --- iteration 1 ---
def bonus_time(salary, bonus)
  "$#{bonus ? salary * 10 : salary}"
end
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
# http://www.codewars.com/kata/55902c5eaa8069a5b4000083
# --- iteration 1 ---
def format_money(a)
  "$#{'%.2f' % a}"
end

# --- iteration 2 ---
def format_money(a)
  '$%.2f'%a
end

# http://www.codewars.com/kata/5268af3872b786f006000228
# --- iteration 1 ---
srand(1)
guess = (Kernel::rand() * 100 + 1).floor
srand(1)

# http://www.codewars.com/kata/56b1f01c247c01db92000076/
# --- iteration 1 ---
def double_char(str)
  str.chars.zip(str.chars).flatten.join
end

# --- iteration 2 ---
def double_char(str)
  str.chars.map{ |x| x * 2 }.join
end

# --- iteration 3 ---
def double_char(str)
  str.gsub(/(.)/, '\1\1')
end

# --- iteration 4 ---
def double_char(str)
  str.gsub(/./, '  ')
end
# http://www.codewars.com/kata/551dd1f424b7a4cdae0001f0
# --- iteration 1 ---
def whoIsNext(names, n)
  cutoff = prev_cutoff(n, names.length)
  names[(n-1-(cutoff*names.length)).fdiv(cutoff + 1).floor]
end

def prev_cutoff(n, length)
  i = 0
  current_cutoff = 0
  old_cutoff = 0
  while current_cutoff*length <= n do
    old_cutoff = current_cutoff
    current_cutoff = ((2 ** (i+1)) - 1)
    i += 1
  end
  old_cutoff
end

# --- iteration 2 ---
def whoIsNext(names, r)
  r, len = r-1, names.length
  until r < len
    r -= len
    r /= 2
  end
  names[r]
end

# --- iteration 3 ---
def whoIsNext(names, r)
  r, len = r-1, names.length
  until r < len
    r = (r - len) / 2
  end
  names[r]
end

# http://www.codewars.com/kata/5645b24e802c6326f7000049/
# iteration 1
def get_a_down_arrow_of(n)
  return "" if n < 1
  pad_l = (1...n).map{ |x| x % 10 }.join("")
  pad_r = pad_l.reverse
  result_arr = []
  n.downto(1).each do |i|
    result_arr << "#{pad_l}#{i%10}#{pad_r}"
    pad_l[-1], pad_r[0] = ["", ""] if pad_l.size > 0
  end
  result_arr.map.with_index{ |x, i| " " * i << x }.join("
")
end

# iteration 2
def get_a_down_arrow_of(n)
  return "" unless n > 0

  pad_l = Array.new(n-1){ |i| (i + 1) % 10 }.join("")
  pad_r = pad_l.reverse

  n.downto(1).map.with_index do |x, i|
    str = " " * i + "#{pad_l}#{x%10}#{pad_r}"
    pad_l[-1], pad_r[0] = ["", ""] if pad_l.size > 0
    str
  end.join("
")
end
# http://www.codewars.com/kata/dropcaps/
# --- iteration 1 ---
def drop_cap(str)
  str.gsub(/\w+/) do |word|
    word.size > 2 ? word.capitalize : word
  end
end
# http://www.codewars.com/kata/551dc350bf4e526099000ae5/
# --- iteration 1 ---
def song_decoder(song)
  song.gsub(/(?:WUB)+/, ' ').strip
end

# --- iteration 2 ---
def song_decoder(song)
  song.split("WUB").reject(&:empty?).join(" ")
end
# http://www.codewars.com/kata/54b42f9314d9229fd6000d9c/
# --- iteration 1 ---
def duplicate_encode(word)
  char_counts = Hash.new(0)
  word.downcase!
  word.each_char { |chr| char_counts[chr] += 1 }
  word.chars.map{ |chr| char_counts[chr] > 1 ? ")" : "(" }.join
end
# http://www.codewars.com/kata/55563df50dda59adf900004d
# --- iteration 1 ---
def validate_ean(c)
  num, chksum = c[0..-2].chars.map(&:to_i), c[-1].to_i
  sum = num.map.with_index{ |x, i| i.odd? ? x * 3 : x }.reduce(:+)
  sum % 10 == 0 ? (chksum == 0) : (10 - (sum % 10)) == chksum
end
# http://www.codewars.com/kata/517b25a48557c200b800000c
# --- iteration 1 ---
def elapsed_seconds(st, et)
  et.to_i - st.to_i
end

# http://www.codewars.com/kata/562d8d4c434582007300004e
# --- iteration 1 ---
def obfuscate(email)
  email.gsub(/(?:@|\.)/, { "@" => " [at] ", "." => " [dot] " })
end

# --- iteration 2 ---
def obfuscate(e)
  e.gsub!(/[@\.]/, "@" => " [at] ", "." => " [dot] ")
end

# http://www.codewars.com/kata/545aa9cf85166a9d8e000df6
# --- iteration 1 ---
def count(list)
   list.map{ |x| yield(x) }.count(true)
end

# --- iteration 2 ---
def count(list, &block)
  list.partition(&block)[0].size
end

# --- iteration 3 ---
def count(list)
  list.count{ |x| yield(x) }
end

# --- iteration 4 ---
def count list, &block
  list.count(&block)
end

# http://www.codewars.com/kata/545991b4cbae2a5fda000158
# --- iteration 1 ---
def include?(array, item)
  array.include?(item)
end

# http://www.codewars.com/kata/545abc2d85166a08bd000f80
# --- iteration 1 ---
def min(list, &block)
  list.min{ |a, b| yield(a, b) }
end

# --- iteration 2 ---
def min(list, &block)
  list.min(&block)
end

# http://www.codewars.com/kata/545b342082e55dc9da000051
# --- iteration 1 ---
def partition(list, &block)
  list.partition(&block)
end

# http://www.codewars.com/kata/54598e89cbae2ac001001135
# --- iteration 1 ---
def any?(list, &block)
  list.any?(&block)
end

# --- iteration 2 ---
def any?(list, &block)
  list.send(:any?, &block)
end

# http://www.codewars.com/kata/5679aa472b8f57fb8c000047
# --- iteration 1 ---
def find_even_index(arr)
  total_sum = arr.reduce(&:+)
  left_sum = 0
  right_sum = total_sum
  arr.each_with_index do |el, idx|
    right_sum -= el
    left_sum += arr[idx-1] if idx > 0
    return idx if left_sum == right_sum
  end
  return -1
end

# --- iteration 2 ---
def find_even_index(arr)
  total_sum = arr.reduce(&:+)
  left_sum = 0
  right_sum = total_sum
  arr.each_index do |idx|
    left_sum += arr[idx-1] if idx > 0
    right_sum -= arr[idx]
    return idx if left_sum == right_sum
   end
  -1
end

# http://www.codewars.com/kata/equal-sides-of-an-array/
# --- iteration 1 ---
def find_even_index(arr)
  total_sum = arr.reduce(&:+)
  left_sum = 0
  right_sum = total_sum
  arr.each_with_index do |el, idx|
    right_sum -= el
    left_sum += arr[idx-1] if idx > 0
    return idx if left_sum == right_sum
  end
  return -1
end

# --- iteration 2 ---
def find_even_index(arr)
  total_sum = arr.reduce(&:+)
  left_sum = 0
  right_sum = total_sum
  arr.each_index do |idx|
    left_sum += arr[idx-1] if idx > 0
    right_sum -= arr[idx]
    return idx if left_sum == right_sum
   end
  -1
end
# http://www.codewars.com/kata/53da3dbb4a5168369a0000fe
# --- iteration 1 ---
def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
end

# --- iteration 2 ---
def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

# --- iteration 3 ---
def even_or_odd(number)
  ["Even", "Odd"][number % 2]
end

# http://www.codewars.com/kata/evil-autocorrect-prank/
# --- iteration 1 ---
def autocorrect(message)
  message.gsub(/(you+|u)/i, "your sister")
end
# http://www.codewars.com/kata/56fcfad9c7e1fa2472000034
# --- iteration 1 ---
def evil(n)
  n.to_s(2).count("1").even? ? "It's Evil!" : "It's Odious!"
end

# http://www.codewars.com/kata/55ee3ebff71e82a30000006a/
# --- iteration 1 ---
def title_to_number(title)
  mappings = Hash[[*"A".."Z"].zip([*"A".."Z"].join.codepoints.map{ |x| x - 64 })]
  title.upcase.reverse.chars.map.with_index { |x, i| mappings[x] * (26 ** i) }.reduce(:+)
end

# --- iteration 2 ---
def title_to_number(title)
  title.bytes.reduce(0) { |acc, n| acc * 26 + (n - 64) }
end
# http://www.codewars.com/kata/56fa3c5ce4d45d2a52001b3c
# --- iteration 1 ---
def xor(a,b)
  [!!a, !!b].count(true) == 1
end

# http://www.codewars.com/kata/55908aad6620c066bc00002a
# --- iteration 1 ---
def XO(str)
  str.each_char.reduce(0) do |acc, chr|
    if chr.downcase == "o"
      acc += 1
    elsif chr.downcase == "x"
      acc -= 1
    end
    acc
  end == 0
end

# --- iteration 2 ---
def XO(str)
  str = str.chars.map(&:downcase)
  str.count("x") == str.count("o")
end

# --- iteration 3 ---
def XO(str)
  str.count("xX") == str.count("oO")
end

# --- iteration 4 ---
def XO(str)
  str.scan(/o/i).count == str.scan(/x/i).count
end

# http://www.codewars.com/kata/5158bfce931c51b69b000001
# --- iteration 1 ---
def extract_ids(data)
  result_ids  = []
  result_ids << data[:id]
  if data[:items]
    data[:items].each do |item|
      result_ids << extract_ids(item)
    end
  end
  result_ids.flatten
end

# --- iteration 2 ---
def extract_ids(data)
  data.to_s.scan(/id=>(\d+)/).flatten.map(&:to_i)
end

# http://www.codewars.com/kata/5158bfce931c51b69b000001
# ---- iteration 1 ---
def extract_ids(data)
  result_ids  = []
  result_ids << data[:id]
  if data[:items]
    data[:items].each do |item|
      result_ids << extract_ids(item)
    end
  end
  result_ids.flatten
end

# --- iteration 2 ---
def extract_ids(data)
  data.to_s.scan(/id=>(\d+)/).flatten.map(&:to_i)
end
# http://www.codewars.com/kata/528e95af53dcdb40b5000171
# --- iteration 1 ---
# This function should return n!
def factorial(n)
  return 1 if n == 0
  (1..n).reduce(&:*)
end

# http://www.codewars.com/kata/55b1e5c4cbe09e46b3000034
# --- iteration 1 ---
def is_pronic(n)
  factors = (1..n).select{ |x| n % x == 0 }.map{ |x| [x, n / x] }
  n == 0 ? true : factors.any?{ |(x, y)| y == x + 1 }
end

# --- iteration 2 ---
def is_pronic(n)
  (0..n).each { |x| return true if (x * (x + 1)) == n }; false
end

# --- iteration 3 ---
def is_pronic(n)
  (0..(Math.sqrt(n.abs).ceil)).any? { |x| x * (x+1) == n }
end

# --- iteration 4 ---
def is_pronic(num)
  (0..num/2).any? { |x| x * (x+1) == num }
end

# http://www.codewars.com/kata/56069d0c4af7f633910000d3
# --- iteration 1 ---
def search(budget,prices)
  prices.select{ |n| n <= budget }.sort.join(",")
end
# http://www.codewars.com/kata/55b051fac50a3292a9000025/
# --- iteration 1 ---
def filter_string(string)
  string.tr("^0-9", '').to_i
end

# --- iteration 2 ---
def filter_string(str)
  str.delete("^0-9").to_i
end

# http://www.codewars.com/kata/55de6173a8fbe814ee000061
# --- iteration 1 ---
def unused_digits(*numbers)
  used_digits = Set.new
  numbers.join("").each_char { |chr| used_digits.add(chr) }
  (("0".."9").to_a - used_digits.to_a).join("")
end

# --- iteration 2 ---
def unused_digits(*digits)
  used_digits = digits.join("").chars.map(&:to_i)
  ((0..9).to_a - used_digits).join("")
end

# http://www.codewars.com/kata/55c9fb1b407024afe6000055
# --- iteration 1 ---
def find_employees_role(name)
  $employees.each do |employee|
    return employee["role"] if employee.values_at("first_name", "last_name").join(" ") == name
  end
  "Does not work here!"
end

# http://www.codewars.com/kata/55c9fb1b407024afe6000055
# --- iteration 1 ---
def find_employees_role(name)
  $employees.each do |employee|
    return employee["role"] if employee.values_at("first_name", "last_name").join(" ") == name
  end
  "Does not work here!"
end

# http://www.codewars.com/kata/56582133c932d8239900002e
# --- iteration 1 ---
def most_frequent_item_count(collection)
  counts = collection.each_with_object(Hash.new(0)) do |element, acc|
    acc[element.to_s] = acc[element.to_s] + 1
  end
  counts.empty? ? 0 : counts.values.max
end

# --- iteration 2 ---
def most_frequent_item_count(col)
  col.uniq.map{ |x| col.count(x) }.max || 0
end

# http://www.codewars.com/kata/558dd9a1b3f79dc88e000001/
# --- iteration 1 ---
def find_dup(arr)
  arr.map{ |x| [x, arr.count(x)] }.select{ |x| x[1] == 2 }[0][0]
end
# http://www.codewars.com/kata/564fa92d1639fbefae00009d
# --- iteration 1 ---
def factors(x)
  return -1 unless x.is_a?(Integer) && x >= 1
  (1..Math.sqrt(x)).each_with_object([]) do |i, factors|
    factors.concat([i, x/i]) if x % i == 0
  end.uniq.sort.reverse
end

# --- iteration 2 ---
def factors(x)
  return -1 unless x.is_a?(Integer) && x >= 1
  x.downto(1).select{ |i| x % i == 0 }
end

# http://www.codewars.com/kata/56b7251b81290caf76000978
# --- iteration 1 ---
def get_last_digit(idx)
  idx = idx % 60 if idx > 60
  fibs = (1..60).to_a
  fibs.map!.with_index do |n, i|
    if i == 0 || i == 1
      1
    else
      fibs[i-2] + fibs[i-1]
    end
  end.map! { |x| x % 10 }
  fibs[idx - 1]
end

# --- iteration 2 ---
def get_last_digit(index)
  a, b = 1, 1
  (index-1).times do
    a, b = b, (a+b)%10
  end
  a
end

# --- iteration 3 ---
def get_last_digit(idx)
  ((Math.sqrt(5)+1).fdiv(2) ** (idx % 60)).fdiv(Math.sqrt(5)).round % 10
end

# http://www.codewars.com/kata/56b7771481290cc283000f28
# --- iteration 1 ---
def last_fib_digit(n)
  n = n % 60 if n > 60
  a, b = 0, 1
  n.times do
    a, b = b, (a + b) % 10
  end
  a
end

# http://www.codewars.com/kata/find-missing-numbers/
# --- iteration 1 ---
def find_missing_numbers(arr)
  Range.new(*arr.minmax).to_a - arr rescue []
end
# http://www.codewars.com/kata/55edaba99da3a9c84000003b
# --- iteration 1 ---
def divisible_by(numbers, divisor)
  numbers.select { |x| x % divisor == 0 }
end

# http://www.codewars.com/kata/5497a3c181dd7291ce000700
# --- iteration 1 ---
def diagonalSum(mat)
  mat.map.with_index.reduce(0){ |ac, (el, i)| ac + el[i] }
end

# --- iteration 2 ---
require "matrix"
def diagonalSum(matrix)
  Matrix[*matrix].trace
end

# --- iteration 3 ---
def diagonalSum(matrix)
  matrix.map.with_index{ |x, i| x[i] }.reduce(:+)
end




# http://www.codewars.com/kata/55a12bb8f0fac1ba340000aa
# --- iteration 1 ---
def find_function(func, arr)
  anon = func.find{ |x| x.is_a?(Proc) }
  arr.map { |x| anon.call(x) ? x : nil }.compact
end

# --- iteration 2 ---
def find_function(func,arr)
  anon = func.find{ |f| f.is_a?(Proc) }
  arr.select{ |x| anon.(x) }
end

# http://www.codewars.com/kata/55a12bb8f0fac1ba340000aa/
# --- iteration 1 ---
def find_function(func, arr)
  anon = func.find{ |x| x.is_a?(Proc) }
  arr.map { |x| anon.call(x) ? x : nil }.compact
end

# --- iteration 2 ---
def find_function(func,arr)
  anon = func.find{ |f| f.is_a?(Proc) }
  arr.select{ |x| anon.(x) }
end
# http://www.codewars.com/kata/53573877d5493b4d6e00050c/
# --- iteration 1 ---
def capital(capitals_hsh_arr)
  capitals_hsh_arr.map do |hsh|
    hsh_arr = hsh.to_a.sort_by{ |x| x[0].to_s == "capital" ? 0 : 1 }
    "The capital of #{hsh_arr[1][1]} is #{hsh_arr[0][1]}"
  end
end
# http://www.codewars.com/kata/544aed4c4a30184e960010f4/
# --- iteration 1 ---
def divisors(n)
  arr = (2..Math.sqrt(n)).map do |i|
    current = n.to_f / i
    current % 1 == 0 ? [n/current, current].map(&:to_i) : nil
  end.compact.flatten.sort
  arr.length > 0 ? arr : "#{n} is prime"
end

# problems with iteartion 1:
# * using arr.length > 0 instead of arr.any? or arr.empty?
# * n.to_f / i and current % 1 == 0 is ugly

# --- iteration 2 ---
def divisors(n)
  arr = (2..Math.sqrt(n)).each_with_object([]) do |i, divs|
    divs.concat([i, n/i]) if n % i == 0
  end
  arr.any? ? arr.uniq.sort : "#{n} is prime"
end

# --- iteration 3 ---
def divisors(n)
  arr = Array.new(n/2) { |i| n % (i+2) == 0 ? i+2 : nil }.compact
  arr.any? ? arr : "#{n} is prime"
end

# --- iteration 4 ---
def divisors(n)
  arr = (2..n/2).select{ |i| n % i == 0 }
  arr.any? ? arr : "#{n} is prime"
end

# it requires more iterations but I still like this solution the best
# due do its simplicity
# http://www.codewars.com/kata/544aed4c4a30184e960010f4
# --- iteration 1 ---
def divisors(n)
  arr = (2..Math.sqrt(n)).map do |i|
    current = n.to_f / i
    current % 1 == 0 ? [n/current, current].map(&:to_i) : nil
  end.compact.flatten.sort
  arr.length > 0 ? arr : "#{n} is prime"
end

# --- iteration 2 ---
def divisors(n)
  arr = (2..Math.sqrt(n)).each_with_object([]) do |i, divs|
    divs.concat([i, n/i]) if n % i == 0
  end
  arr.any? ? arr.uniq.sort : "#{n} is prime"
end

# --- iteration 3 ---
def divisors(n)
  arr = Array.new(n/2) { |i| n % (i+2) == 0 ? i+2 : nil }.compact
  arr.any? ? arr : "#{n} is prime"
end

# --- iteration 4 ---
def divisors(n)
  arr = (2..n/2).select{ |i| n % i == 0 }
  arr.any? ? arr : "#{n} is prime"
end

# http://www.codewars.com/kata/558dd9a1b3f79dc88e000001
# --- iteration 1 ---
def find_dup(arr)
  arr.map{ |x| [x, arr.count(x)] }.select{ |x| x[1] == 2 }[0][0]
end

# http://www.codewars.com/kata/55b86beb1417eab500000051
# --- iteration 1 ---
def gap(num)
  puts "num: #{num.to_s(2).inspect}"
  (num.to_s(2).scan(/(?<=1)0+(?=1)/).map(&:size).max) || 0
end

# --- iteration 2 ---
def gap(num)
  num.to_s(2).scan(/(?<=1)0+(?=1)/).map(&:size).max || 0
end

# http://www.codewars.com/kata/find-the-mine/
def mine_location field
  row_len = field.size
  field.flatten.each_with_index do |element, index|
    return [(index/row_len)%row_len, index%row_len] if element == 1
  end
end
# http://www.codewars.com/kata/56269eb78ad2e4ced1000013
# --- iteration 1 ---
def find_next_square(sq)
  sqr_root = Math.sqrt(sq)
  sqr_root % 1 == 0 ? (sqr_root + 1) ** 2 : -1
end

# https://www.codewars.com/kata/54da5a58ea159efa3800083
# --- iteration 1 ---
def find_it(arr)
  arr.find{ |e| arr.count(e).odd? }
end
# http://www.codewars.com/kata/5526fc09a1bbd946250002dc
# --- iteration 1 ---
def find_outlier(arr)
  arr_evenness = arr.map(&:even?)
  if arr_evenness.count(true) > 1
    arr[arr_evenness.index(false)]
  else
    arr[arr_evenness.index(true)]
  end
end

# --- iteration 2 ---
def find_outlier(ints)
  evens, odds = ints.partition{ |int| int.even? }
  evens.size > odds.size ? odds.first : evens.first
end

# http://www.codewars.com/kata/55a75e2d0803fea18f00009d
# --- iteration 1 ---
def find_slope(points)
  return "undefined" if points[2] - points[0] == 0
  "%d" % ((points[3] - points[1]) / (points[2] - points[0]))
end

# http://www.codewars.com/kata/56ba65c6a15703ac7e002075/
# --- iteration 1 ---
def find_next_power(val, pow)
  lower = val ** (1.fdiv(pow))
  ((lower.floor + 1) ** pow)
end
# http://www.codewars.com/kata/56ba65c6a15703ac7e002075
# --- iteration 1 ---
def find_next_power(val, pow)
  lower = val ** (1.fdiv(pow))
  ((lower.floor + 1) ** pow)
end

# http://www.codewars.com/kata/5680781b6b7c2be860000036/
# --- iteration 1 ---
def vowel_indices(word)
  word.chars.map.with_index{ |chr, i| /[aeiouy]/i === chr ? i+1 : nil }.compact
end
# http://www.codewars.com/kata/5566b0dd450172dfc4000005
# --- iteration 1 ---
def length_of_sequence(arr,n)
  return 0 if arr.length < 2 || arr.count(n) != 2
  start_idx, end_idx = [nil, nil]
  arr.each_with_index do |el, i|
    if el == n
      start_idx ||= i
      start_idx && end_idx = i
    end
  end
  (end_idx - start_idx) + 1
end

# --- iteration 2 ---
def length_of_sequence(arr,n)
  return 0 unless arr.length > 1 && arr.count(n) == 2
  arr.rindex(n) - arr.index(n) + 1
end

# --- iteration 3 ---
def length_of_sequence(arr,n)
  return 0 unless arr.count(n) == 2
  arr.rindex(n) - arr.index(n) + 1
end

# http://www.codewars.com/kata/568018a64f35f0c613000054
# --- iteration 1 ---
class Guesser
  def initialize(number, lives)
    @number = number
    @lives = lives
  end

  def guess(n)
    fail "you lose" if @lives < 1
    return true if @number == n
    @lives -= 1
    false
  end
end

# http://www.codewars.com/kata/535bfa2ccdbf509be8000113
# --- iteration 1 --
class Primes
  def self.first(n)
    @primes ||= [2]
    until @primes.size >= n do
      @primes << get_next_prime(@primes.last)
    end
    @primes.first(n)
  end

  private

  def self.get_next_prime(start_num)
    n = start_num + 1
    until n.is_prime?
      n += 1
    end
    return n
  end
end

class Fixnum
  def is_prime?
    2.upto(Math.sqrt(self)).each do |i|
      return false if self % i == 0
    end
    true
  end
end
# http://www.codewars.com/kata/56aed32a154d33a1f3000018
# --- iteration 1 ---
def my_first_kata(a,b)
  return false unless a.is_a?(Numeric) && b.is_a?(Numeric)
  a%b + b%a
end
# http://www.codewars.com/kata/56aed32a154d33a1f3000018
# --- iteration 1 ---
def my_first_kata(a,b)
  return false unless a.is_a?(Numeric) && b.is_a?(Numeric)
  (a % b) + (b % a)
end

# http://www.codewars.com/kata/57158fb92ad763bb180004e7
# --- iteration 1 ---
def rain_amount(rain_amount)
  puts rain_amount
  if rain_amount < 40
    return "You need to give your plant #{40 - rain_amount}mm of water"
  else
   return "Your plant has had more than enough water for today!"
  end
end

# http://www.codewars.com/kata/5355a811a93a501adf000ab7
# --- iteration 1 ---
def fizz_buzz_custom(string_1="Fizz", string_2="Buzz", num_1=3, num_2=5)
  arr = (1..100).to_a
  arr.map do |x|
    if (x%num_1 == 0 && x%num_2 == 0)
      "#{string_1}#{string_2}"
    elsif (x%num_1 == 0)
      string_1
    elsif (x%num_2 == 0)
      string_2
    else
      x
    end
  end
end

# http://www.codewars.com/kata/5250a89b1625e5decd000413
# --- iteration 1 ---
def flatten(array)
  array.flatten(1)
end

# http://www.codewars.com/kata/5143d157ceb46d6a61000001
# --- iteration 1 ---
def solution(value)
  value.round(2)
end

# http://www.codewars.com/kata/53368a47e38700bd8300030d
# --- iteration 1 ---
def list names
  return_names = []
  names.each do |name|
    return_names << name[:name] << ', '
  end
  return_names.pop
  return_names[-2] = ' & ' if names.size>1
  return_names.flatten.join
end

# --- iteration 2 ---
def list names
  names.map(&:values).join(", ").gsub(/, (\w+)$/, " & \1")
end

# http://www.codewars.com/kata/51689e27fe9a00b126000004
# --- iteration 1 ---
def format_words(words)
  return "" if words.nil?
  words.reject!(&:empty?)
  return "" if words.empty?
  words.size > 1 ? [words[0...-1].join(", "), words[-1]].join(" and ") : words.first.to_s
end

# --- iteration 2 ---
def format_words(words)
  return "" if words.nil?
  words.reject!(&:empty?)
  [words[0...-1].join(", "), words[-1]].compact.reject(&:empty?).join(" and ")
end

# --- iteration 3 ---
def format_words(words)
  #return "" if words.nil?
  words = (words || []).reject(&:empty?)
  [words[0...-1].join(", "), words[-1]].compact.reject(&:empty?).join(" and ")
end

# http://www.codewars.com/kata/51689e27fe9a00b126000004/
# --- iteration 1 ---
def format_words(words)
  return "" if words.nil?
  words.reject!(&:empty?)
  return "" if words.empty?
  words.size > 1 ? [words[0...-1].join(", "), words[-1]].join(" and ") : words.first.to_s
end

# --- iteration 2 ---
def format_words(words)
  return "" if words.nil?
  words.reject!(&:empty?)
  [words[0...-1].join(", "), words[-1]].compact.reject(&:empty?).join(" and ")
end
# http://www.codewars.com/kata/5641a03210e973055a00000d
# --- iteration 1 ---
def two_decimal_places(n)
  ("%.2f" % n).to_f
end

# --- iteration 2 ---
def two_decimal_places(n)
  n.round(2)
end

ces(n)
  (n * 100).to_i.fdiv(100)
end

# http://www.codewars.com/kata/5641a03210e973055a00000d
# --- iteration 1 ---
def two_decimal_places(n)
  ("%.2f" % n).to_f
end

# --- iteration 2 ---
def two_decimal_places(n)
  n.round(2)
end

# http://www.codewars.com/kata/5713bc89c82eff33c60009f7
# --- iteration 1 ---
def to_freud(sentence)
  sentence.split.map{ |_x| "sex" }.join(" ")
end

# http://www.codewars.com/kata/56459c0df289d97bd7000083/
# --- iteration 1 ---
def generator(from, to, step)
  return [] if step < 1
  if to < from
    from.downto(to).to_a.map.with_index.reduce([]) do |acc, (el, i)|
      acc << el if (el - from) % step == 0 && el >= to
      acc
    end
  else
    from.step(to, step).to_a
  end
end

# --- iteration 2 ---
def generator(from, to, step)
  return [] if step == 0
  from.step(to, (to > from ? step : -step)).to_a
end
# http://www.codewars.com/kata/56459c0df289d97bd7000083
# --- iteration 1 ---
def generator(from, to, step)
  return [] if step < 1
  if to < from
    from.downto(to).to_a.map.with_index.reduce([]) do |acc, (el, i)|
      acc << el if (el - from) % step == 0 && el >= to
      acc
    end
  else
    from.step(to, step).to_a
  end
end

# --- iteration 2 ---
def generator(from, to, step)
  return [] if step == 0
  from.step(to, (to > from ? step : -step)).to_a
end

# http://www.codewars.com/kata/558aa460dcfb4a94c40001d7/
# --- iteration 1 ---
def mpg2lp100km(mpg)
  (((mpg * 1.609344 * 1.fdiv(3.785411784)) ** (-1)) * 100).round(2)
end

def lp100km2mpg(lp100km)
  (((lp100km ** (-1)) * 100) * (0.62137119223) * (3.785411784)).round(2)
end
# http://www.codewars.com/kata/558aa460dcfb4a94c40001d7
# --- iteration 1 ---
def mpg2lp100km(mpg)
  (((mpg * 1.609344 * 1.fdiv(3.785411784)) ** (-1)) * 100).round(2)
end

def lp100km2mpg(lp100km)
  (((lp100km ** (-1)) * 100) * (0.62137119223) * (3.785411784)).round(2)
end

# http://www.codewars.com/kata/523b4ff7adca849afe000035
# --- iteration 1 ---
def greet; "hello world!"; end

# http://www.codewars.com/kata/523b66342d0c301ae400003b
# --- iteration 1 ---
def multiply(a, b)
  a * b
end

# http://www.codewars.com/kata/523b623152af8a30c6000027
# --- iteration 1 ---
def square(x)
  x ** 2
end

# https://www.codewars.com/kata/54df2067ecaa226eca000229/train/ruby
# --- iteration 1 ---
def f(n)
  return false unless n.is_a?(Integer) && n > 0
  (n * (n + 1)) / 2
end
# http://www.codewars.com/kata/567b39b27d0a4606a5000057
# --- iteration 1 ---
def mutate(chromosome, p)
  chromosome.chars.map.with_index do |c, i|
    i < chromosome.size * p ? (c.to_i + 1) % 2 : c
  end.shuffle.join
end

# http://www.codewars.com/kata/567b39b27d0a4606a5000057
# --- iteration 1 ---
def mutate(chromosome, p)
  chromosome.chars.map.with_index do |c, i|
    i < chromosome.size * p ? (c.to_i + 1) % 2 : c
  end.shuffle.join
end

# http://www.codewars.com/kata/554dc2b88fbafd2e95000125
# --- iteration 1 ---
def vector_length(vector)
  x1, y1, x2, y2 = vector.flatten.map(&:to_f)
  Math.sqrt(((x2 - x1) ** 2) + ((y2 - y1) ** 2))
end

# http://www.codewars.com/kata/515dfd2f1db09667a0000003
# --- iteration 1 ---
def keysAndValues(data)
  [data.keys, data.values]
end

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

# http://www.codewars.com/kata/563e320cee5dddcf77000158
# --- iteration 1 ---
def get_average(marks)
  marks.reduce(&:+) / marks.length
end

# http://www.codewars.com/kata/56747fd5cb988479af000028
# --- iteration 1 ---
def get_middle(s)
  s.length >= 2 ? s[s.length-1-(s.length/2), 2-s.length%2] : s
end

# --- iteration 2 ---
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end

# http://www.codewars.com/kata/53227465e4d01b5d5200011e
# --- iteration 1 ---
def get_squares(r)
  r.to_a.keep_if{ |x| Math.sqrt(x) % 1 == 0 }.sort.uniq
end

# http://www.codewars.com/kata/53d16bd82578b1fb5b00128c
# --- iteration 1 ---
def grader(score)
  return "A" if score == 1
  (score <= 0.5 || score > 1) ? "F" : %w(F D C B A)[(score*10) % 5]
end

# --- iteration 2 ---
def grader(score)
  mappings = { 0.9..1.0 => "A",
               0.8..0.89 => "B",
               0.7..0.79 => "C",
               0.6..0.69 => "D"}
  mappings.select{ |k, _v| k === score }.values.first || "F"
end

# http://www.codewars.com/kata/55d277882e139d0b6000005d
# --- iteration 1 ---
def find_average(nums)
  nums.empty? ? 0 : nums.map(&:to_f).reduce(&:+) / nums.length
end

# http://www.codewars.com/kata/56214b6864fe8813f1000019
# --- iteration 1 ---
health = 100
position = 0
coins = 0

def main
  roll_dice
  move
  combat
  get_coins
  buy_health
  print_status
end

# http://www.codewars.com/kata/55f73f66d160f1f1db000059
# --- iteration 1 ---
def combine_names(first, last)
  [first, last].join(" ")
end

# --- iteration 2 ---
def combine_names(*names)
  names.join(" ")
end

# http://www.codewars.com/kata/55cb854deb36f11f130000e1
# --- iteration 1 ---
def weather_info(temp)
  c = convert(temp)
  (c < 0) ? (c.to_s + " is freezing temperature") : (c.to_s + " is above freezing temperature")
end

def convert(t)
  (t.to_f - 32.0) * (5.0/9.0)
end

# http://www.codewars.com/kata/grasshopper-debug-sayhello/
# --- iteration 1 ---
def say_hello(name)
  "Hello, #{name}"
end
# http://www.codewars.com/kata/5625618b1fe21ab49f00001f
# --- iteration 1 ---
def say_hello(name)
  "Hello, #{name}"
end

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

# http://www.codewars.com/kata/560dab9f8b50f89fd6000070
# --- iteration 1 ---
money = 10
candy = 1.42
chips = 2.40
soda = 1.00
change = money - [candy, chips, soda].reduce(&:+)

# http://www.codewars.com/kata/55ca77fa094a2af31f00002a
# --- iteration 1 ---
la_liga_goals, champions_league_goals, copa_del_rey_goals = [43, 10, 5]
total_goals = [43, 10, 5].reduce(&:+)

# http://www.codewars.com/kata/560c31275c39c481c4000022
# --- iteration 1 ---
sandwiches, salads, wraps, frenchFries = 4, 6, 5, 10
prices = [8.0, 7.0, 6.5, 1.2]
totalPrice = [sandwiches, salads, wraps, frenchFries].map.with_index.reduce(0) do |acc, (el, i)|
  acc + el * prices[i]
end

# http://www.codewars.com/kata/55d24f55d7dd296eb9000030
# --- iteration 1 ---
def summation(num)
  (1..num).reduce(&:+)
end

# --- iteration 2 ---
def summation(num)
  num * (num + 1) / 2
end

# --- iteration 3 ---
def summation(n)
  n * (n + 1) / 2
end

# http://www.codewars.com/kata/56019d3b2c39ccde76000086
# --- iteration 1 ---
def do_turn
  %w(roll_dice move combat get_coins buy_health print_status).each { |x| send(x) }
end

Hero")
    @name = name
    @position = "00"
    @health = 100
    @damage = 5
    @experience = 0
  end
end

# http://www.codewars.com/kata/5612e743cab69fec6d000077
# --- iteration 1 ---
a = "dev"
b = "Lab"

name = a + b

# http://www.codewars.com/kata/5642bf07a586135a6f000004
# --- iteration 1 ---
def step_through_with(s)
  /(.)\1/ === s
end

# --- iteration 2 ---
def step_through_with(s)
  s.squeeze != s
end

# http://www.codewars.com/kata/535474308bb336c9980006f2
# --- iteration 1 ---
def greet(name)
  "Hello #{name.capitalize}!"
end

# http://www.codewars.com/kata/54fdfe14762e2edf4a000a33
# --- iteration 1 ---
def fire(x,y)
  $grid.each_slice(3).to_a[y][x]
end

# --- iteration 2 ---
def fire(x,y)
  $grid[y*3+x]
end

# http://www.codewars.com/kata/52ae6b6623b443d9090002c8
# --- iteration 1 ---
def guess_gifts(wishlist, gifts)
  names = wishlist.map{ |gift| gift[:name] }
  wishlist_without_names = wishlist.map do |item|
    item.reject do |k, _v|
      k == :name
    end
  end
  wishlist_by_name = Hash[names.zip(wishlist_without_names)]
  puts wishlist_by_name
  wishlist_by_name.each_with_object([]) do |(name, gift), obj|
    obj << name  if gifts.include?(gift)
  end
end

# --- iteration 2 ---
def guess_gifts(wishlist, gifts)
  wishlist.each_with_object([]) do |item, guesses|
    name = item.delete(:name)
    guesses << name if gifts.include?(item)
  end
end

# http://www.codewars.com/kata/5624e574ec6034c3a20000e6
# --- iteration 1 ---
def hamming_distance(a,b)
  a, b = a.chars, b.chars
  a.zip(b).reduce(0) { |acc, el| el[0] == el[1] ? acc : acc + 1 }
end

# --- iteration 2 ---
def hamming_distance(a,b)
  a, b = [a, b].map(&:chars)
  a.each_index.reduce(0){ |acc, i| a[i] == b[i] ? acc : acc + 1 }
end

# http://www.codewars.com/kata/536c6d6549aa8b2e160002ae/
# --- iteration 1 ---
class String
  def hashtags
    split.select { |w| w.start_with?("#") }
  end
end

# --- iteration 1 ---
class String
  def hashtags
    scan(/#\w+/)
  end
end
# http://www.codewars.com/kata/54592a5052756d5c5d0009c3
# --- iteration 1 ---
def head(arr)
  arr.first
end

def tail(arr)
  arr[1..-1]
end

def init(arr)
  arr[0..-2]
end

def last(arr)
  arr.last
end

# http://www.codewars.com/kata/help-your-granny/

def tour(friends, towns, distances)
  @towns, @distances = towns, distances
  @friends = friends.select{ |friend| @towns.assoc(friend) }
  total_dist = distance_from_grandma(0)
  (1...@friends.length).each do |idx|
    total_dist += distance_using_pythag(idx)
  end
  (total_dist + distance_from_grandma(@friends.length-1)).floor
end

def distance_from_grandma(idx)
  @distances[@towns.assoc(@friends[idx])[1]]
end

def distance_using_pythag(idx)
  ((distance_from_grandma(idx) ** 2) - (distance_from_grandma(idx-1) ** 2)) ** (1.0/2.0)
end
# http://www.codewars.com/kata/5536a85b6ed4ee5a78000035
# --- iteration 1 ---
def tour(friends, towns, distances)
  @towns, @distances = towns, distances
  @friends = friends.select{ |friend| @towns.assoc(friend) }
  total_dist = distance_from_grandma(0)
  (1...@friends.length).each do |idx|
    total_dist += distance_using_pythag(idx)
  end
  (total_dist + distance_from_grandma(@friends.length-1)).floor
end

def distance_from_grandma(idx)
  @distances[@towns.assoc(@friends[idx])[1]]
end

def distance_using_pythag(idx)
  ((distance_from_grandma(idx) ** 2) - (distance_from_grandma(idx-1) ** 2)) ** (1.0/2.0)
end

# http://www.codewars.com/kata/554b4ac871d6813a03000035
# --- iteration 1 ---
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(" ")
end

# http://www.codewars.com/kata/holiday-shopping-priority-queue/
class HolidayPriorityQueue
  def initialize
    @queue = {}
  end

  def addGift(gift)
    @queue.merge!({gift["priority"].to_s => gift["gift"]})
    @queue.size
  end

  def buyGift
    return "" if @queue.size < 1
    @queue.delete(@queue.keys.min)
  end
end
# http://www.codewars.com/kata/52a64cf14009fd59c6000994
# --- iteration 1 ---
class HolidayPriorityQueue
  def initialize
    @queue = {}
  end

  def addGift(gift)
    @queue.merge!({gift["priority"].to_s => gift["gift"]})
    @queue.size
  end

  def buyGift
    return "" if @queue.size < 1
    @queue.delete(@queue.keys.min)
  end
end

# http://www.codewars.com/kata/52a64cf14009fd59c6000994
# --- iteration 1 ---
class HolidayPriorityQueue
  def initialize
    @queue = {}
  end

  def addGift(gift)
    @queue.merge!({gift["priority"].to_s => gift["gift"]})
    @queue.size
  end

  def buyGift
    return "" if @queue.size < 1
    @queue.delete(@queue.keys.min)
  end
end

# http://www.codewars.com/kata/55d8618adfda93c89600012e
# --- iteration 1 ---
def what_is(x)
  puts x
  if x.equal?(42)
    'everything'
  elsif x == (42 ** 42)
    'everything everythinged'
  else
    'nothing'
  end
end


# http://www.codewars.com/kata/5601409514fc93442500010b
# --- iteration 1 ---
def better_than_average(arr, points)
  (arr << points).reduce(0){ |acc, el| acc + el.fdiv(arr.size) } <= points
end

# http://www.codewars.com/kata/56e3cd1d93c3d940e50006a4/
# --- iteration 1 ---
def make_valley(arr)
  arr = arr.sort.reverse
  left, right = [], []
  arr.each_slice(2).each do |el|
    left << el[0]
    right << el[1]
  end
  left, right = left.compact, right.compact
  left + right.reverse
end
# http://www.codewars.com/kata/559cc2d2b802a5c94700000c
# --- iteration 1 ---
def consecutive(arr)
  ([*((arr.min)..(arr.max))] - arr).size rescue 0
end

# http://www.codewars.com/kata/80-s-kids-number-1-how-many-licks-does-it-take/
# --- iteration 1 ---
def total_licks(env)
  num_licks = 252
  num_licks += env.values.compact.reduce(&:+) if env.size > 0
  env.reject!{ |k, v| v < 0 }
  toughest_challenge = env.flatten.each_slice(2).sort_by { |x| -x[1] }.first[0] if env.size > 0
  return_sentence(num_licks, toughest_challenge)
end

def return_sentence(num_licks, toughest_challenge = nil)
  str = "It took #{num_licks} licks to get to the tootsie roll center of a tootsie pop."
  toughest_challenge ? str + " The toughest challenge was #{toughest_challenge}." : str
end

# http://www.codewars.com/kata/51f9d93b4095e0a7200001b8
# --- iteration 1 ---
def howManyLightsabersDoYouOwn(name = nil)
  name == "Zach" ? 18 : 0
end

# http://www.codewars.com/kata/56aed5db9d5cb55de000001c/
# --- iteration 1 ---
def two_count(n)
   n.to_s(2).chars.reverse.join.split("1")[0].size rescue 0
end

# --- iteration 2 ---
def two_count(n)
  return 0 if n % 2 == 1
  two_count(n/2) + 1
end
# http://www.codewars.com/kata/56eff1e64794404a720002d2/
# --- iteration 1 ---
def testit(s)
  s.downcase.delete("^word").scan(/w[word]?o[word]?r[word]?d/).count
end

# --- iteration 2 ---
def testit(s)
  s.scan(/w.*?o.*?r.*?d/i).size
end
# http://www.codewars.com/kata/54d1c59aba326343c80000e7
# --- iteration 1 ---
def divide_numbers x, y
  x.to_f / y
end

# --- iteration 2 ---
def divide_numbers x, y
  x.fdiv(y)
end

# http://www.codewars.com/kata/55960bbb182094bc4800007b
# --- iteration 1 ---
def insert_dash(num)
  num.to_s.chars.map.with_index.each_with_object("") do |(chr, i), acc|
    acc << "-" if acc[-1].to_i.odd? && chr.to_i.odd?
    acc << chr
  end
end

# http://www.codewars.com/kata/55c3026406402936bc000026
# --- iteration 1 ---
def insert_dash2(num)
  num.to_s.gsub(/([13579](?=[13579]))/, '\1-').gsub(/([2468](?=[2468]))/, '\1*')
end

# http://www.codewars.com/kata/55b8c0276a7930249e00003c
# --- iteration 1 ---
def encryption(str)
  str.chars.map do |x|
    x == " " ? x : $CHAR_TO_MORSE[x]
  end.join(" ")
end

# http://www.codewars.com/kata/55e6125ad777b540d9000042
# --- iteration 1 ---
def get_count(words = nil)
  return { "vowels" => 0, "consonants" => 0 } if words.nil? || !words.is_a?(String)
  {
    "vowels" => words.downcase.tr("^aeiou", "").size,
    "consonants" => words.downcase.tr("aeiou., ", "").size
  }
end

# --- iteration 2 ---
def get_count(words = "")
  vowels = words.is_a?(String) ? words.downcase.tr("^aeiou", "").size : 0
  { "vowels" => vowels,
    "consonants" => words.is_a?(String) ? words.downcase.tr("^a-z", "").size - vowels : 0 }
end

# http://www.codewars.com/kata/55e6125ad777b540d9000042/
# --- iteration 1
def get_count(words = nil)
  return { "vowels" => 0, "consonants" => 0 } if words.nil? || !words.is_a?(String)
  {
    "vowels" => words.downcase.tr("^aeiou", "").size,
    "consonants" => words.downcase.tr("aeiou., ", "").size
  }
end
# http://www.codewars.com/kata/55e4c52ad58df7509c00007e
# --- iteration 1 ---
def validate(username, password)
  return "Wrong username or password!" if password =~ /(\|\||\\)/
  validator = Validator.new
  validator.login(username, password)
end

# http://www.codewars.com/kata/55e4c52ad58df7509c00007e
# --- iteration 1 ---
def validate(username, password)
  return "Wrong username or password!" if password =~ /(\|\||\\)/
  validator = Validator.new
  validator.login(username, password)
end

# http://www.codewars.com/kata/560d6ebe7a8c737c52000084
# --- iteration 1 ---
def not_visible_cubes(n)
  return 0 if n < 3
  (n - 2) ** 3
end

# --- iteration 2 ---
def not_visible_cubes(n)
  (n <= 2 && 0) || (n - 2) ** 3
end

# http://www.codewars.com/kata/iq-test/
# --- iteration 1 ---
def iq_test(numbers)
  numbers = numbers.split(" ").map(&:to_i)
  odd_count, even_count = 0, 0
  first_odd, first_even = nil, nil

  numbers.each_with_index do |num, idx|
    if num.even?
      even_count += 1
      first_even ||= num
    else
      odd_count += 1
      first_odd ||= num
    end
    return numbers.index(first_odd) + 1 if (odd_count == 1 && even_count > 1)
    return numbers.index(first_even) + 1 if (odd_count > 1 && even_count == 1)
  end
  1
end

# --- iteration 2 ---
def iq_test(nums)
  nums = nums.split.map(&:to_i).map(&:even?)
  (nums.count(true) > 1 ? nums.index(false) : nums.index(true)) + 1
end
# http://www.codewars.com/kata/5262119038c0985a5b00029f
# --- iteration 1 ---
# Test if number is prime
def isPrime(num)
return false if num < 2
(2..(Math.sqrt(num))).each do |x|
  return false if num % x == 0
end
true
end

# http://www.codewars.com/kata/555a67db74814aa4ee0001b5
# --- iteration 1 ---
def test_even(n)
   n.even? rescue false
end

# --- iteration 2 ---
def test_even(n)
  n.round.even?
end

# http://www.codewars.com/kata/558ee8415872565824000007
# --- iteration 1 ---
def is_divisible(n, *remaining)
  remaining.reduce(0){ |acc, x| acc + n.fdiv(x) } % 1 == 0
end

# http://www.codewars.com/kata/558ee8415872565824000007
# --- iteration 1 ---
def is_divisible(n, *remaining)
  remaining.reduce(0){ |acc, x| acc + n.fdiv(x) } % 1 == 0
end

# http://www.codewars.com/kata/5262119038c0985a5b00029f/
# --- iteration 1 ---
def isPrime(num)
  return false if num < 2
    (2..(Math.sqrt(num))).each do |x|
  return false if num % x == 0
  end
  true
end

# --- iteration 2 ---
def isPrime(num)
  return false if num < 2
  (2..Math.sqrt(num)).each { |i| return false if num % i == 0 }
  true
end
# http://www.codewars.com/kata/56cd44e1aa4ac7879200010b
# --- iteration 1 ---
class String
  def is_upcase?
    delete("a-z") == self
  end
end
# http://www.codewars.com/kata/56cd44e1aa4ac7879200010b
# --- iteration 1 ---
class String
  def is_upcase?
    delete("a-z") == self
  end
end

# --- iteration 2 ---
class String
  def is_upcase?
    self == upcase
  end
end

# http://www.codewars.com/kata/is-this-a-triangle/
# iteration 1
def isTriangle(a,b,c)
  return false if [a, b, c].any? { |x| x <= 0 }
  (a + b) > c  && (a + c) > b && (b + c) > a
end

# iteration 2
def isTriangle(a,b,c)
  a, b, c = [a, b, c].sort
  a + b > c
end
# http://www.codewars.com/kata/56f695399400f5d9ef000af5
# --- iteration 1 ---
def correct_tail(body, tail)
  body[-1] == tail
end

# http://www.codewars.com/kata/563a8656d52a79f06c00001f/train/
# --- iteration 1 ---
def is_valid(idn)
  return false if idn.size < 1
  return false unless /[a-z_$]/i === idn[0] 
  return false unless idn[1..-1].chars.all? { |n| /[a-z0-9_$]/i === n }
  true
end

# --- iteration 2 ---
def is_valid(idn)
  /\A[a-z_$][a-z0-9_$]*\z/i === idn
end

# --- iteration 3 ---
def is_valid(idn)
  /\A[a-z_$][\w_$]*\z/i === idn
end
# http://www.codewars.com/kata/54ba84be607a92aa900000f1
# --- iteration 1 ---
def is_isogram(string)
  string.downcase.chars.uniq.size == string.size
end

# http://www.codewars.com/kata/5390bac347d09b7da40006f6/
# --- iterations ---
class String
  def to_jaden_case
    split(" ").map(&:capitalize).join(" ")
  end
end

class String
  def to_jaden_case
    gsub(/(?<=\A|\s)(\w+)/, &:capitalize)
  end
end
# http://www.codewars.com/kata/5390bac347d09b7da40006f6/
# --- iteration 1 ---
class String
  def toJadenCase
    split(" ").map(&:capitalize).join(" ")
  end
end

# --- iteration 2 ---
class String
  def toJadenCase
    gsub(/(?<=\A|\s)(\w+)/, &:capitalize)
  end
end
# http://www.codewars.com/kata/525d9b1a037b7a9da7000905
# --- iteration 1 ---
def search_names(logins)
  logins.select{ |(name, email)| name[-1] == "_" }
end

# http://www.codewars.com/kata/525d9b1a037b7a9da7000905
# --- iteration 1 ---
def search_names(logins)
  logins.select{ |(name, email)| name[-1] == "_" }
end

# http://www.codewars.com/kata/55225023e1be1ec8bc000390
# --- iteration 1 ---
def greet(name)
  return "Hello, my love!" if name == "Johnny"
  "Hello, #{name}!"
end

# http://www.codewars.com/kata/josephus-permutation/
# --- iteration 1 ---
def josephus(items, k)
  result_items = []
  loop do
    break if items.empty?
    items.rotate!(k-1)
    result_items << items.delete_at(0)
  end
  result_items
end

# --- iteration 2 ---
def josephus(items, k)
  result_items = []
  until items.empty? do
    items.rotate!(k-1)
    result_items << items.shift
  end
  result_items
end
# http://www.codewars.com/kata/5550d638a99ddb113e0000a2
# --- iteration 1 ---
def josephus(items, k)
  result_items = []
  loop do
    break if items.empty?
    items.rotate!(k-1)
    result_items << items.delete_at(0)
  end
  result_items
end

# --- iteration 2 ---
def josephus(items, k)
  result_items = []
  until items.empty? do
    items.rotate!(k-1)
    result_items << items.shift
  end
  result_items
end

# --- iteration 3 ---
def josephus(items,k)
  Array.new(items.length) { items.rotate!(k).pop }
end

# http://www.codewars.com/kata/text-align-justify/ruby
# --- Iteration 1 ---
def justify(text, width)
  current_count = 0
  words_with_len = text.split.each_with_object([]) do |word, list|
    if list.size > 0
      current_count = list.last.last
    end
    current_count += word.length + 1
    if current_count > width+1
      list << ['
', -1]
      current_count = word.length + 1
    end
    list << [word, current_count]
  end
  lengthened_arrs = words_with_len.map(&:first).join(" ").split("\n").map{ |x| x.split(" ") }
  expanded_strs = lengthened_arrs.map{ |x| expand(x, width) }
  expanded_strs.last.gsub!(/\s+/, " ")
  expanded_strs.last.strip! if expanded_strs.last
  expanded_strs.join("
")
end

def expand(words, width)
  num_spaces = width - (words.inject(0){ |acc, word| acc += word.length})
  space_places = words.count - 1
  return words.first if space_places == 0
  space_counts = ([num_spaces/space_places] * space_places).map.with_index do |x, i| 
    if i < num_spaces%space_places
      x + 1
    else
      x
    end
  end
  words.zip(space_counts.map{ |x| " " * x }).join
end
# http://www.codewars.com/kata/55a3cb91d1c9ecaa2900001b
# --- iteration 1 ---
def strong_enough( earthquake, age )
  building_power = 1000 * (1 - 0.01) ** age
  quake_power = earthquake.reduce(1) { |acc, el| acc * el.reduce(&:+) }
  quake_power > building_power ? "Needs Reinforcement!" : "Safe!"
end

# http://www.codewars.com/kata/5572392fee5b0180480001ae/train/ruby
# --- iteration 1 ---
KEYPAD_MAPPINGS = { "1" => "7", "2" => "8", "3" => "9", "7" => "1", "8" => "2", "9" => "3" }

def computer_to_phone(nums)
  nums.chars.map{ |n| KEYPAD_MAPPINGS[n] || n }.join
end

# --- iteration 2 ---
def computer_to_phone(nums)
  nums.tr("123789", "789123")
end
# http://www.codewars.com/kata/56d31aaefd3a52902a000d66/
# --- iteration 1 ---
def rad_ladies(name)
  name.delete("^a-zA-Z24680 !").upcase
end

# --- iteration 2 ---
def rad_ladies(name)
  name.upcase.delete("^A-Z !")
end
# http://www.codewars.com/kata/53574972e727385ad10002ca
# --- iteration 1 ---
spoken = ->(greeting) do
  greeting << "."
end

shouted = ->(greeting) do
  greeting.upcase << "!"
end

whispered = ->(greeting) do
  greeting.downcase << "."
end

greet = ->(style, msg) do
  style.call(msg)
end

# --- iteration 2 ---
spoken = ->(greeting) do
  greeting << "."
end

shouted = ->(greeting) do
  greeting.upcase << "!"
end

whispered = ->(greeting) do
  greeting.downcase << "."
end

greet = ->(style, msg) do
  style.(msg)
end

# http://www.codewars.com/kata/53574972e727385ad10002ca/
# --- iteration 1 ---
spoken = ->(greeting) do
  greeting << "."
end

shouted = ->(greeting) do
  greeting.upcase << "!"
end

whispered = ->(greeting) do
  greeting.downcase << "."
end

greet = ->(style, msg) do
  style.call(msg)
end
# http://www.codewars.com/kata/541629460b198da04e000bb9
# --- iteration 1 ---
def last(*args)
  args.flat_map{ |x| x.is_a?(String) ? x[-1] : x }.last
end

# http://www.codewars.com/kata/5458d4d2cbae2a9438000389
# --- iteration 1 ---
def make_lazy(func, *args)
  -> { method(func).call(*args) }
end

# http://www.codewars.com/kata/left$-and-right$/
# --- iteration 1 ---
def left(str, i = nil)
  if i.nil?
    return str[0]
  elsif i.is_a?(String)
    return str.split(i).first
  elsif i > 0
    return str[0...i]
  elsif i < 0
    return str[0...(str.size + i)]
  end
  ""
end

def right(str, i = nil)
  left(str.reverse, (i.is_a?(String) ? i.reverse : i)).reverse
end
# http://www.codewars.com/kata/55f1786c296de4952f000014
# --- iteration 1 ---
def length_of_line(a)
  x1, y1, x2, y2 = a.flatten
  "%.2f" % Math.hypot((x2 - x1), (y2 - y1))
end

# http://www.codewars.com/kata/56d49587df52101de70011e4
# --- iteration 1 ---
def leo(oscar)
  return "Leo got one already!" if oscar > 88
  case oscar
  when 88 then "Leo finally won the oscar! Leo is happy"
  when 86 then "Not even for Wolf of wallstreet?!"
  else "When will you give Leo an Oscar?"
  end
end
# http://www.codewars.com/kata/56d49587df52101de70011e4
# --- iteration 1 ---
def leo(oscar)
  return "Leo got one already!" if oscar > 88
  case oscar
  when 88 then "Leo finally won the oscar! Leo is happy"
  when 86 then "Not even for Wolf of wallstreet?!"
  else "When will you give Leo an Oscar?"
  end
end

# http://www.codewars.com/kata/5265a8beff1d1500a30005e9
# --- iteration 1 ---
def line_types(lines)
  lines.map do |line|
    if line.nil?
      :unknown
    elsif /alpha/ === line.downcase
      :alpha
    elsif /beta/ === line.downcase
      :beta
    else
      :unknown
    end
  end
end

# --- iteration 2 ---
def line_types(lines)
  lines.map{ |l| l =~ /(alpha|beta)/i ? $1.to_sym.downcase : :unknown }
end

# http://www.codewars.com/kata/linked-lists-length-and-count/ruby
# --- Iteration 1 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def length(node)
  return 0 if node.nil?
  node.next ? length(node.next) + 1 : 1
end

def count(node, data)
  return 0 if node.nil?
  count_here = (data == node.data) ? 1 : 0
  node.next ? count(node.next, data) + count_here : count_here
end

=begin NOTE
* `length` can be written more succinctly as:
def length(node)
  node ? 1 + length(node.next) : 0
end
=end
# http://www.codewars.com/kata/55befc42bfe4d13ab1000007
# --- iteration 1 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def get_nth(node,index)
  raise StandardError  if node == nil || index < 0
  return node if index == 0
  count = 0
  until count == index
    raise StandardError if node.next == nil
    node = node.next
    count += 1
  end
  node
end

# http://www.codewars.com/kata/55beec7dd347078289000021
# --- iteration 1 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def length(node)
  return 0 if node.nil?
  node.next ? length(node.next) + 1 : 1
end

def count(node, data)
  return 0 if node.nil?
  count_here = (data == node.data) ? 1 : 0
  node.next ? count(node.next, data) + count_here : count_here
end

# http://www.codewars.com/kata/55be95786abade3c71000079
# --- iteration 1 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def push(head, data)
  node = Node.new(data)
  node.next = head
  node
end

def build_one_two_three
  head = nil
  [3, 2, 1].each do |i|
    head = push(head, i)
  end
  head
end

# --- iteration 2 ---
class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def push(head, data)
  node = Node.new(data)
  node.next = head
  node
end

def build_one_two_three
  head = nil
  [3, 2, 1].each do |i|
    head = push(head, i)
  end
  head
end

# http://www.codewars.com/kata/53dbd5315a3c69eed20002dd
# --- iteration 1 ---
def filter_list(l)
  # return a new list with the strings filtered out
  l.delete_if { |x| x.is_a?(String) }
end

# http://www.codewars.com/kata/557dd2a061f099504a000088
# --- iteration 1 ---
def list_to_array(list)
  vals = [list["value"]]
  while list["next"]
    list = list["next"]
    vals << list["value"]
  end
  vals
end

# --- iteration 2 ---
def list_to_array(list)
  puts list.inspect
  if list.nil?
    []
  else
    [list["value"]].concat(list_to_array(list["next"]))
  end
end

# http://www.codewars.com/kata/5601c5f6ba804403c7000004
# --- iteration 1 ---
def bar_triang(p1,p2,p3)
  [p1, p2, p3].reduce([0, 0]) { |acc, el|  [acc[0] + el[0], acc[1] + el[1]] }
  .map{ |x| x.fdiv(3).round(4) }
end

# http://www.codewars.com/kata/54bb6f887e5a80180900046b
# --- iteration 1 --- (DP, O(N^2))
def longest_palindrome(str)
  return str.length if str.length < 2
  result_table = Array.new(str.length) { Array.new(str.length) }
  max_length = 0
  str.chars.each_index do |j|
    j.downto(0) do |i|
      length_here = j - i + 1
      if length_here == 1
        result_table[i][j] = true
      elsif length_here == 2
         result_table[i][j] = (str[i] == str[j])
      else
        result_table[i][j] = result_table[i+1][j-1] && str[i] == str[j]
      end
      max_length = [max_length, length_here].max if result_table[i][j]
    end
  end
  max_length
end

# --- iteration 2 --- (O(N^3) because of string reverse)
def longest_palindrome(str)
  max_length = 0
  str.chars.each_index do |i|
    (str.length-1).downto(0) do |j|
      if str.slice(i..j) == str.slice(i..j).reverse
        max_length = [max_length, j - i + 1].max
      end
    end
  end
  max_length
end

# http://www.codewars.com/kata/557efeb04effce569d000022/
# --- iteration 1 ---
def make_acronym(phrase)
  return "Not a string" unless phrase.is_a?(String)
  return "Not letters" unless phrase.downcase.delete("^a-z ").size == phrase.size
  return phrase.split.map{ |word| word[0] }.join.upcase
end
# http://www.codewars.com/kata/55805ab490c73741b7000064/
# --- iteration 1 ---
def make_backronym(string)
  string.upcase.chars.map{ |chr| $dict[chr] }.join(" ")
end
# http://www.codewars.com/kata/5535572c1de94ba2db0000f6
# --- iteration 1 ---
class Object
  def bark
    "Woof!"
  end
end
# http://www.codewars.com/kata/557efeb04effce569d000022
# --- iteration 1 ---
def make_acronym(phrase)
  return "Not a string" unless phrase.is_a?(String)
  return "Not letters" unless phrase.downcase.delete("^a-z ").size == phrase.size
  return phrase.split.map{ |word| word[0] }.join.upcase
end

# https://www.codewars.com/kata/5365bb5d5d0266cd010009be
# --- iteration 1 ---
WORTHS = { H: 50, Q: 25, D: 10, N: 5, P: 1 }

def make_change(amount)
  remaining_amount = amount
  result_coins = %i(H Q D N P).each_with_object({}) do |coin_type, r|
    current_coin_count = remaining_amount/WORTHS[coin_type]
     r[coin_type] = current_coin_count if current_coin_count > 0
    remaining_amount -= (current_coin_count * WORTHS[coin_type])
  end
end
# http://www.codewars.com/kata/5663f5305102699bad000056
# --- iteration 1 ---
def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?
  min_max_a1, min_max_a2 = a1.map(&:size).minmax, a2.map(&:size).minmax
  [(min_max_a1.min - min_max_a2.max), (min_max_a1.max - min_max_a2.min)].map(&:abs).max
end

# --- iteration 2 ---
def mxdiflg(a1, a2)
  min_a1, max_a1, min_a2, max_a2 = [a1.map(&:size), a2.map(&:size)].map(&:minmax).flatten
  a1.empty? || a2.empty? ? -1 : [(min_a1 - max_a2), (max_a1 - min_a2)].map(&:abs).max
end

# http://www.codewars.com/kata/529adbf7533b761c560004e5/
# --- iteration 1 ---
def fibonacci(n)
  a, b = 1, 1
  (n - 1).times do |i|
    a, b = b, a + b
  end
  a
end

# --- iteration 2 ---
def fibonacci(n, cache = [0,1])
  cache[n] ||= fibonacci(n-1, cache) + fibonacci(n-2, cache)
end
# http://www.codewars.com/kata/557b5e0bddf29d861400005d
# --- iteration 1 ---
def converter(mpg)
  (mpg * 1.609344 / 4.54609188).round(2)
end

# http://www.codewars.com/kata/52af7bf41f5a1291a6000025
# --- iteration 1 ---
def time_for_milk_and_cookies(date)
  /\A\d+-12-24\z/ === date.to_s
end

# --- iteration 2 ---
def time_for_milk_and_cookies date
  date.strftime("%m%d") == "1224"
end

# --- iteration 3 ---
def time_for_milk_and_cookies date
  date.day == 24 && date.month == 12
end

# http://www.codewars.com/kata/563f037412e5ada593000114
# --- iteration 1 ---
def calculate_years(principal, interest, tax, desired)
  return 0 if principal == desired
  years_taken = 0
  loop do
    years_taken += 1
    principal = principal + (principal * interest) * (1 - tax)
    return years_taken if principal >= desired
  end
end

# http://www.codewars.com/kata/54466996990c921f90000d61
# --- iteration 1 ---
def is_monotone(heights)
  heights.sort == heights
end

# http://www.codewars.com/kata/54b724efac3d5402db00065e/
# --- iteration 1 ---
def decodeMorse(morse_code)
  morse_code.strip!
  morse_code.split(/\s/).map do |element|
    MORSE_CODE[element]
  end.join("|").gsub("|||", " ").gsub("|", "")
end

# I struggled with this one (clearly).  I couldn't find an elegant way to deal 
# with ["S", " ", " ", "O", " ", " ", "S"] vs. ["S", "O", "S"],
# which is why I used the "|" hack although I could've just used spaces.
# I keep trying to do things like this:
=begin
  def decodeMorse(morse_code)
    morse_code.scan(/[-\.]+/).map{ |x| MORSE_CODE[x] }.join(" ")
  end
=end
# but it loses the locations of the original spaces.
# I think the key is realizing 
# http://www.codewars.com/kata/56582133c932d8239900002e/
# --- iteration 1 ---
def most_frequent_item_count(collection)
  counts = collection.each_with_object(Hash.new(0)) do |element, acc|
    acc[element.to_s] = acc[element.to_s] + 1
  end
  counts.empty? ? 0 : counts.values.max
end

# --- iteration 2 ---
def most_frequent_item_count(col)
  col.uniq.map{ |x| col.count(x) }.max || 0
end
# http://www.codewars.com/kata/514a3996d22ce03198000003
# --- iteration 1 ---
# mark the MrFreeze class as frozen
class MrFreeze
  def self.frozen?
    true
  end
end


# http://www.codewars.com/kata/514b92a657cdc65150000006/
# --- implementation 1 ---
def solution(num)
 (1...num).reduce(0) do |acc, el|
   acc += el if (el % 3 == 0 || el % 5 == 0)
   acc
 end
end

def solution(n)
  (1...n).each_with_object(0) do |el, m|
    m + el if (el % 3 == 0 || el % 5 == 0)
  end
end
# http://www.codewars.com/kata/514b92a657cdc65150000006
# --- iteration 1 ---
def solution(num)
 (1...num).reduce(0) do |acc, el|
   acc += el if (el % 3 == 0 || el % 5 == 0)
  acc
 end
end

# http://www.codewars.com/kata/514b92a657cdc65150000006
# --- iteration 1 ---
def solution(num)
 (1...num).reduce(0) do |acc, el|
   acc += el if (el % 3 == 0 || el % 5 == 0)
  acc
 end
end

# http://www.codewars.com/kata/50654ddff44f800200000004
# --- iteration 1 ---
def multiply(a, b)
  a * b
end

# http://www.codewars.com/kata/52e9aa89b5acdd26d3000127
# --- iteration 1 ---
def spam(number)
  str = ""
  number.times { |_| str << 'hue'}
  str
end

# --- iteration 2 ---
def spam(number)
  'hue' * number
end

# http://www.codewars.com/kata/5708f682c69b48047b000e07
# --- iteration 1 ---
def multiply(n)
  n * ( 5 ** n.to_s.delete("^0-9").chars.count)
end

# http://www.codewars.com/kata/5667e8f4e3f572a8f2000039
# --- iteration 1 ---
def accum(s)
  s.chars.map.with_index do |chr, i|
    chr.upcase << chr.downcase * (i)
  end.join("-")
end

# http://www.codewars.com/kata/56f699cd9400f5b7d8000b55
# --- iteration 1 ---
def fix_the_meerkat(arr)
  arr.reverse
end

# http://www.codewars.com/kata/5356ad2cbb858025d800111d
# --- iteration 1 ---
def cap_me(names)
  names.map(&:capitalize)
end

# http://www.codewars.com/kata/570e8ec4127ad143660001fd
# --- iteration 1 ---
def billboard(name, price = 30)
  name.chars.reduce(0) { |acc, _chr| acc + price }
end

# http://www.codewars.com/kata/559ac78160f0be07c200005a
# --- iteration 1 ---
def name_shuffler(str)
  str =~ /(\S+)\s(\S+)/; "#{$2} #{$1}"
end

# --- iteration 2 ---
def name_shuffler(str)
  b,a = str.split(" "); "#{a} #{b}"
end

# http://www.codewars.com/kata/54530f75699b53e558002076
# --- iteration 1 ---
def nato(word)
  letters =  {
    "A"=> "Alpha",  "B"=> "Bravo",   "C"=> "Charlie",
    "D"=> "Delta",  "E"=> "Echo",    "F"=> "Foxtrot",
    "G"=> "Golf",   "H"=> "Hotel",   "I"=> "India",
    "J"=> "Juliett","K"=> "Kilo",    "L"=> "Lima",
    "M"=> "Mike",   "N"=> "November","O"=> "Oscar",
    "P"=> "Papa",   "Q"=> "Quebec",  "R"=> "Romeo",
    "S"=> "Sierra", "T"=> "Tango",   "U"=> "Uniform",
    "V"=> "Victor", "W"=> "Whiskey", "X"=> "X-ray",
    "Y"=> "Yankee", "Z"=> "Zulu"
  }
  word.upcase.chars.map{ |x| letters[x] }.join(" ")
  #your code here
end

# http://www.codewars.com/kata/56abc5e63c91630882000057/
# --- iteration 1 ---
def next_numb(n)
  n += 1
  until n >= 9876543210 do
    return n if digits_unique?(n) && n.odd? && multiple_of_three?(n)
    n += 1
  end
  return "There is no possible number that fulfills those requirements"
end

private

def digits_unique?(n)
  n_str = n.to_s
  n_str.chars.uniq.size == n_str.size
end

def multiple_of_three?(n)
  n % 3 == 0
end

# --- iteration 2 ---
def next_numb(n)
  until n >= 9876543210
    n += 1
    return n if featured_number?(n)
  end
  "There is no possible number that fulfills those requirements"
end

def featured_number?(n)
  n.to_s.length == n.to_s.chars.uniq.length && n.odd? && n % 3 == 0
end
# http://www.codewars.com/kata/56abc5e63c91630882000057
# --- iteration 1 ---
def next_numb(n)
  n += 1
  until n >= 9876543210 do
    return n if digits_unique?(n) && n.odd? && multiple_of_three?(n)
    n += 1
  end
  return "There is no possible number that fulfills those requirements"
end

private

def digits_unique?(n)
  n_str = n.to_s
  n_str.chars.uniq.size == n_str.size
end

def multiple_of_three?(n)
  n % 3 == 0
end

# --- iteration 2 ---
def next_numb(n)
  until n >= 9876543210
    n+= 1
    return n if featured_number?(n)
  end
  "There is no possible number that fulfills those requirements"
end

def featured_number?(n)
  n.to_s.length == n.to_s.chars.uniq.length && n.odd? && n % 3 == 0
end

# http://www.codewars.com/kata/56269eb78ad2e4ced1000013/

# --- iteration 1 ---
def find_next_square(sq)
  sqr_root = Math.sqrt(sq)
  sqr_root % 1 == 0 ? (sqr_root + 1) ** 2 : -1
end
# http://www.codewars.com/kata/51fd6bc82bc150b28e0000ce
# --- iteration 1 ---
def no_odds( values )
  values.reject(&:odd?)
end

# http://www.codewars.com/kata/570a6a46455d08ff8d001002
# --- iteration 1 ---
def no_boring_zeros(num)
  num.to_s[/-?\d*[^0]/].to_i
end

# --- iteration 2 ---
def no_boring_zeros(num)
  num.to_s.gsub(/0+\z/, "").to_i
end

# http://www.codewars.com/kata/5709bdd2f088096786000008
# --- iteration 1 ---
def super_size(n)
  n.to_s.chars.sort.reverse.join.to_i
end

# http://www.codewars.com/kata/56dbed3a13c2f61ae3000bcd
# --- iteration 1 ---
def noonerize(numbers)
  return "invalid array" unless numbers.all? { |num| num.is_a?(Fixnum) }
  nums_spoonerized = numbers.map(&:to_s).tap{ |(a, b)| a[0], b[0] = b[0], a[0] }.map(&:to_i)
  nums_spoonerized.reduce(:-).abs
end
# http://www.codewars.com/kata/560d6ebe7a8c737c52000084/

# iteration 1
def not_visible_cubes(n)
  return 0 if n < 3
  (n-2)**3
end

# iteration 2
def not_visible_cubes(n)
  (n <= 2 && 0) || (n - 2) ** 3
end
# http://www.codewars.com/kata/559760bae64c31556c00006b
# --- iteration 1 ---
def climb(n)
  nums = [1]
  return nums if n == 1
  addition_units = n.to_s(2)[1..-1].chars.map(&:to_i)
  puts nums.inspect
  addition_units.size.times do |i|
    nums << (nums.last * 2 + addition_units[i])
  end
  puts nums.inspect
  puts "n_binary: #{n.to_s(2)[1..-1]}"
  nums
end

# --- iteration 2 ---
def climb(n)
  nums = [1]
  return nums if n == 1
  addition_digits = n.to_s(2)[1..-1].chars.map(&:to_i)
  addition_digits.each_index do |i|
    nums += [(nums.last * 2 + addition_digits[i])]
  end
  nums
end

# --- iteration 3 ---
def climb(n)
  subseq = []
  until n == 0 do
    subseq.unshift(n)
    n = n/2
  end
  subseq
end

# http://www.codewars.com/kata/5648b12ce68d9daa6b000099
# --- iteration 1 ---
def number(bus_stops)
  bus_stops.reduce(0) { |acc, el| acc + el[0] - el[1] }
end

# --- iteration 2 ---
def number(bus_stops)
  bus_stops.map{ |on, off| on - off }.reduce(&:+)
end

# http://www.codewars.com/kata/52f787eb172a8b4ae1000a34
# --- iteration 1 ---
def zeros(n)
  n >= 5 ? zeros(n/5) + n/5 : 0
end

# http://www.codewars.com/kata/563b1f55a5f2079dc100008a
# --- iteration 1 ---
def get_larger_numbers(a, b)
  a.zip(b).map(&:max)
end
# http://www.codewars.com/kata/53934feec44762736c00044b
# --- iteration 1 ---
a = some_number.to_s

# http://www.codewars.com/kata/54fe05c4762e2e3047000add
# --- iteration 1 ---
class Ship
  def initialize(draft, crew)
    puts "draft: #{draft}, crew: #{crew}"
    @draft = draft
    @crew = crew
  end

  def is_worth_it
    @draft - @crew * 1.5 >= 20
  end
end

# http://www.codewars.com/kata/54fe05c4762e2e3047000add
# --- iteration 1 ---
class Ship
  def initialize(draft, crew)
    puts "draft: #{draft}, crew: #{crew}"
    @draft = draft
    @crew = crew
  end

  def is_worth_it
    @draft - @crew * 1.5 >= 20
  end
end

# http://www.codewars.com/kata/55849d76acd73f6cc4000087
# --- iteration 1 ---
def playerRankUp(points)
  points >= 100 ? "Well done! You have advanced to the qualifying stage. Win 2 out of your next 3 games to rank up." : false
end

# http://www.codewars.com/kata/52af0d380fcae83a560008af
# --- iteration 1 ---
$kids = []
def hand_out_gift(n)
  $kids.include?(n) ? fail : $kids << n
end

# --- iteration 2 ---
def hand_out_gift(n)
  ($kids ||= []).include?(n) ? fail : $kids << n
end

# http://www.codewars.com/kata/5609fd5b44e602b2ff00003a

# --- iteration 1 ---
def process_2arrays(arr1, arr2)
  [(arr1 & arr2), ((arr1 - arr2) + (arr2 - arr1)), (arr1 - arr2), (arr2 - arr1)]
    .map(&:size)
end
# http://www.codewars.com/kata/56dec885c54a926dcd001095
# --- iteration 1 ---
def opposite(num)
  -num
end

# http://www.codewars.com/kata/555086d53eac039a2a000083
# --- iteration 1 ---
def lovefunc(flower1, flower2)
   (flower1+flower2).odd?
end

# http://www.codewars.com/kata/paginationhelper
class PaginationHelper

  attr_accessor :collection, :items_per_page

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  def item_count
    @item_count ||= @collection.length
  end

  def page_count
    (item_count.to_f / items_per_page.to_f).ceil
  end

  def page_item_count(page_index)
    return -1 unless page_index >= 0 && page_index < page_count
    if page_index == page_count - 1
      (item_count % items_per_page) == 0 ? item_count : (item_count % items_per_page)
    else
      items_per_page
    end
  end

  def page_index(item_index)
    return -1 unless item_index < item_count && item_index >= 0
    (item_index.to_f/items_per_page.to_f).floor
  end
end
# http://www.codewars.com/kata/515bb423de843ea99400000a
# --- iteration 1 ---
class PaginationHelper

  attr_accessor :collection, :items_per_page

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  def item_count
    @item_count ||= @collection.length
  end

  def page_count
    (item_count.to_f / items_per_page.to_f).ceil
  end

  def page_item_count(page_index)
    return -1 unless page_index >= 0 && page_index < page_count
    if page_index == page_count - 1
      (item_count % items_per_page) == 0 ? item_count : (item_count % items_per_page)
    else
      items_per_page
    end
  end

  def page_index(item_index)
    return -1 unless item_index < item_count && item_index >= 0
    (item_index.to_f/items_per_page.to_f).floor
  end
end

# http://www.codewars.com/kata/54e2213f13d73eb9de0006d2/
# --- iteration 1 ---
def pair_zeros(arr)
  zero_count = 0
  arr.map do |i|
    zero_count += 1 if i == 0
    if zero_count == 2
      zero_count = 0
      nil
    else
      i
    end
  end.compact
end
# http://www.codewars.com/kata/find-the-parity-outlier
# --- iteration 1 ---
def find_outlier(arr)
  arr_evenness = arr.map(&:even?)
  if arr_evenness.count(true) > 1
    arr[arr_evenness.index(false)]
  else
    arr[arr_evenness.index(true)]
  end
end

# --- iteration 2 ---
def find_outlier(ints)
  evens, odds = ints.partition{ |int| int.even? }
  evens.size > odds.size ? odds.first : evens.first
end
# http://www.codewars.com/kata/56833b76371e86f8b6000015/
# --- iteration 1 ---
class String
  def to_cents
    /\A\$(?<dols>\d+)\.(?<cents>\d{2})\z/ =~ self ? (dols + cents).to_i : nil
  end
end

# --- iteration 2 ---
class String
  def to_cents
    /\A\$(?<dols>\d+)\.(?<cents>\d+)\z/ =~ self ? (dols + cents).to_i : nil
  end
end
# http://www.codewars.com/kata/54b81566cd7f51408300022d
# --- iteration 1 ---
def findWord(query, str_arr)
  result = str_arr.map{ |str| str if /#{query}/i === str }.compact
  result.empty? ? ["Empty"] : result
end

# --- iteration 2 ---
def findWord(query, str_arr)
  result = str_arr.grep(/#{query}/i)
  result.empty? ? ["Empty"] : result
end
# http://www.codewars.com/kata/56f3a1e899b386da78000732/ 
# --- iteration 1 ---
def partlist(arr)
  (0..arr.size-2).map { |n| [arr[0..n].join(" "), arr[(n+1)..-1].join(" ")] }
end
# http://www.codewars.com/kata/56a28c30d7eb6acef700004d
# --- iteration 1 ---
def is_perfect(n)
  return false if n == 1

  result = (2..(Math.sqrt(n))).each_with_object([1]) do |i, factors|
    if n % i == 0
      factors << i
      factors << n/i
    end
  end

  result.reduce(:+) == n
end
# http://www.codewars.com/kata/56b18992240660a97c00000a
# --- iteration 1 ---
def permutation_average(n)
  perms = n.to_s.chars.permutation.to_a
  total_sum = perms.reduce(0) do |acc, perm|
    acc + perm.join.to_i
  end
  total_sum.fdiv(perms.count).round
end

# http://www.codewars.com/kata/5592e3bd57b64d00f3000047/
# --- iteration 1 ---
def find_nb(m)
  count = cube_sum = 1
  until cube_sum >= m
    count += 1
    cube_sum += (count ** 3)
  end
  cube_sum == m ? count : -1
end

# --- iteration 2 ---
def find_nb(total_vol)
  cube_count = 1
  until total_vol <= 0
    total_vol -= cube_count ** 3
    cube_count += 1
  end
  total_vol == 0 ? cube_count-1 : -1
end

# sometimes it's good to use a passed in value and subtract from it when you're
# concerned about whether it ends up being 0 etc, instead of instantiating a new
# val like in iteration 1
# http://www.codewars.com/kata/55c0a79e20be94c91400014b/
# --- iteration 1 ---
class Cube
  def set_side(side)
    @side = side
  end

  def get_side
    @side || 0
  end
end
# http://www.codewars.com/kata/55c0a79e20be94c91400014b
# --- iteration 1 ---
class Cube
  def set_side(side)
    @side = side
  end

  def get_side
    @side || 0
  end
end

# http://www.codewars.com/kata/5552101f47fc5178b1000050/
# --- iteration 1 ---
def dig_pow(n, p)
  n_digs = n.to_s.chars.map(&:to_i)
  p_digs = (p...(p + n_digs.count)).to_a
  x = n_digs.each_with_index.reduce(0) do |acc, (el, i)|
    acc + el ** p_digs[i]
  end
  x.to_f / n % 1 == 0 ? x / n : -1
end

# --- iteration 2 ---
def dig_pow(n, p)
  sum = n.to_s.chars.map(&:to_i).each_with_index.reduce(0) do |acc, (el, i)|
    acc += el**(p + i)
  end
  sum % n == 0 ? sum/n : -1
end
# http://www.codewars.com/kata/52ceafd1f235ce81aa00073a
# --- iteration 1 ---
def plural(n)
  n != 1
end

# http://www.codewars.com/kata/51c38e14ea1c97ffaf000003
# --- iteration 1 ---
def solution(keys, def_val)
  Hash[keys.zip([def_val] * keys.size)]
end

# --- iteration 2 ---
def solution(keys, def_val)
  Hash[keys.map{ |k| [k, def_val]}]
end

# http://www.codewars.com/kata/534d0a229345375d520006a0
# --- iteration 1 ---
def power_of_two?(x)
  loop do
    x = x.fdiv(2)
    if x == 1
      return true
    elsif x < 1
      return false
    end
  end
end

# --- iteration 2 ---
def power_of_two?(x)
  loop { x = x.fdiv(2); break x == 1 if x <= 1 }
end

# --- iteration 3 ---
def power_of_two?(x)
  x.to_s(2).count("1") == 1
end

# --- iteration 4 ---
def power_of_two?(n)
  n == 0 ? false : n & (n - 1) == 0
end

# http://www.codewars.com/kata/56541980fa08ab47a0000040/
# --- iteration 1 ---
def printer_error(str)
  "#{str.count("^a-m")}/#{str.length}"
end
# http://www.codewars.com/kata/56e2f59fb2ed128081001328
# --- iteration 1 ---
def printArray(array)
  array.join(",")
end

# http://www.codewars.com/kata/537922daa79ca02290000d18
# --- iteration 1 ---
def calculate
  (2 + 2) * 2
end

# http://www.codewars.com/kata/551204b7509063d9ba000b45
# --- iteration 1 ---
def main_diagonal_product(matrix)
  (0...matrix.count).reduce(1){ |acc, i| acc * matrix[i][i] }
end


# http://www.codewars.com/kata/527b3cd0492b6b15250060af
# --- iteration 1 ---
items = [{a: "b", c: "d"}]

# http://www.codewars.com/kata/527b3cd0492b6b15250060af
# --- iteration 1 ---
items = [{a: "b", c: "d"}]

# http://www.codewars.com/kata/515f51d438015969f7000013
# --- iteration 1 ---
def pyramid(num)
  (1..num).reduce([]) { |acc, n| acc << [1] * n }
end

# http://www.codewars.com/kata/561bbcb0fbbfb0f5010000ee/
# --- iteration 1 ---
def longest_possible(playback)
  short_enough_songs = songs.select{ |s| num_secs(s[:playback]) <= playback }
  return false if short_enough_songs.empty?
  short_enough_songs.sort_by{ |s| num_secs(s[:playback]) }.last[:title]
end

def num_secs(time_str)
  mins, secs = time_str.split(":").map(&:to_i)
  mins * 60 + secs
end
# http://www.codewars.com/kata/5121303128ef4b495f000001
# --- iteration 1 ---
class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def greet(your_name)
    "Hello #{your_name}, my name is #{name}"
  end
end

# http://www.codewars.com/kata/55c423ecf847fbcba100002b
# --- iteration 1 ---
def filter_words(phrase)
  return phrase.gsub(/(bad|mean|ugly|horrible|hideous)/i,"awesome")
end

# http://www.codewars.com/kata/55c423ecf847fbcba100002b/
# --- iteration 1 ---
def filter_words(phrase)
  return phrase.gsub(/bad|mean|ugly|horrible|hideous/i,"awesome")
end
# http://www.codewars.com/kata/5720a81309e1f9b232001c5b/
# --- iteration 1 ---
def gym_slang(phrase)
  mappings = { 
    "probably" => "prolly",
    "i am" => "i'm",
    "instagram" => "insta",
    "do not" => "don't",
    "going to" => "gonna",
    "combination" => "combo"
  }
  
  phrase.gsub(/(#{mappings.keys.join("|")})/i) do |match|
     match[0] + mappings[match.downcase][1..-1]
  end
end
# http://www.codewars.com/kata/567bf4f7ee34510f69000032
# --- iteration 1 ---
class String
  def digit?
    (self.length == 1 && self =~ /[0-9]/) ? true : false
  end
end

# --- iteration 2 ---
class String
  def digit?
    !!(self =~ /\A\d\z/)
  end
end

# --- iteration 3 ---
class String
  def digit?
    (self =~ /\A\d\z/) ? true : false
  end
end

# --- iteration 4 ---
class String
  def digit?
    return true if self =~ /\A\d\z/
    false
  end
end

# --- iteration 5 ---
class String
  def digit?
    ("0".."9").include?(self)
  end
end

# --- iteration 6 ---
class String
  def digit?
    self != "X" && self.sub(/\d/, "X") == "X"
  end
end

# --- iteration 7 ---
class String
  def digit?
    /\A\d\z/ === self
  end
end

# http://www.codewars.com/kata/567ed73340895395c100002e
# --- iteration 1 ---
class String
  def signed_eight_bit_number?
    puts self.inspect
    return false if self.size > 1 && ["0", "+"].include?(self[0])
    return false if self.delete("^0-9 ").empty?
    return false if self[0,2] == "-0"
    return false unless self.to_i >= -128 && self.to_i <= 127
    return false unless self =~ /\A[-+0-9]+\z/
    return false if self.count("-").to_i > 1 || self.count("+").to_i > 1
    true
  end
end

# --- iteration 2 ---
class String
  def signed_eight_bit_number?
    (-128..127).map(&:to_s).include?(self)
  end
end

# http://www.codewars.com/kata/567c9f56d83baeed8300000f
# --- iteration 1 ---
class String
  def hex_number?
    return false if self.empty? || self == "0x"
    self.upcase.gsub(/\A0X/, "").tr("0-9A-F", "").empty?
  end
end

# --- iteration 2 ---
class String
  def hex_number?
    /\A(?:0x)?[0-9A-F]+\z/i === self
  end
end

# http://www.codewars.com/kata/567de72e8b3621b3c300000b
# --- iteration 1 ---
class String
  def letter?
    /\A[a-z]\z/i === self
  end
end

# http://www.codewars.com/kata/567bed99ee3451292c000025
# --- iteration 1 ---
class String
  def vowel?
   /\A[aeiou]\z/i === self
  end
end

# http://www.codewars.com/kata/567de8823fa5eee02100002a
# --- iteration 1 ---
class String
  def whitespace?
    !(/\S/ === self)
  end
end

# --- iteration 2 ---
class String
  def whitespace?
    /\A\s*\z/ === self
  end
end

# --- iteration 3 ---
class String
  def whitespace?
    !(/\S/ =~ self)
  end
end

# http://www.codewars.com/kata/56833b76371e86f8b6000015
# --- iteration 1 ---
class String
  def to_cents
    /\A\$(?<dols>\d+)\.(?<cents>\d+)\z/ =~ self ? (dols + cents).to_i : nil
  end
end

# --- iteration 2 ---
class String
  def to_cents
    /\A\$(?<dols>\d+)\.(?<cents>\d{2})\z/ =~ self ? (dols + cents).to_i : nil
  end
end

# http://www.codewars.com/kata/53f0f358b9cb376eca001079
# --- iteration 1 ---
class Ball
  attr_accessor :ball_type
  def initialize(ball_type = nil)
    @ball_type = ball_type || "regular"
  end
end

# http://www.codewars.com/kata/563cc8c1a3895d7d30000049
# --- iteration 1 ---
def mul(a, b)
  return 0 if b < 1
  return a if b == 1
  a + (mul(a, b-1))
end

# --- iteration 2 ---
def mul(a, b)
  Array.new(b, a).reduce(:+) || 0
end

# http://www.codewars.com/kata/53e30ec0116393fe1a00060b
# --- iteration 1 ---
def unique(ints)
  unique_ints = []
  ints.each do |int|
    unique_ints << int unless unique_ints.include?(int)
  end
  unique_ints
end

# --- iteration 2 ---
def unique(i)
  i&i
end

# --- iteration 3 ---
def unique(xOxXxOxXxOxX)
xOxXxOxXxOxX&xOxXxOxXxOxX
xOxXxOxXxOxX&xOxXxOxXxOxX
xOxXxOxXxOxX&xOxXxOxXxOxX
xOxXxOxXxOxX&xOxXxOxXxOxX
end

# http://www.codewars.com/kata/570597e258b58f6edc00230d
# --- iteration 1 ---
def array(str)
  nums = str.split(",")
  return if nums.count < 3
  nums[1..-2].join(" ")
end

# http://www.codewars.com/kata/521d8d1a123ebb5a8900008a
# --- iteration 1 ---
def remove_odd_hashes(array, key_1, key_2)
  array.reject{ |hsh| (hsh[key_1] + hsh[key_2]).odd? }
end

# http://www.codewars.com/kata/563cf89eb4747c5fb100001b
# --- iteration 1 ---
def remove_smallest(nums)
  nums.tap{ |x| x.delete_at(nums.index(nums.min) || 0) }
end

# http://www.codewars.com/kata/56b0ff16d4aa33e5bb00008e
# --- iteration 1 ---
def shorten_to_date(long_date)
  long_date.split[0..-2].join(" ").delete(",")
end

# http://www.codewars.com/kata/53d628de83db278fb1000710
# --- iteration 1 ---
#Re-open the class String and add the my_new_method method.
class String
  def my_new_method
    upcase
  end
end

# http://www.codewars.com/kata/557af9418895e44de7000053
# --- iteration 1 ---
def repeat_it(string, n)
  return "Not a string" unless string.is_a?(String)
  string * n
end

# --- iteration 2 ---
def repeat_it(string,n)
  return "Not a string" unless string.is_a?(String)
  string * n
end

# http://www.codewars.com/kata/515ceaebcc1dde8870000001
# --- iteration 1 ---
def solution(items, index, default_value)
  (-items.size...items.size) === index ? items[index] : default_value
end

# --- iteration 2 ---
def solution(items, index, default_value)
  items.fetch(index, default_value)
end

# http://www.codewars.com/kata/55685cd7ad70877c23000102
# --- iteration 1 ---
def makeNegative(num)
  num < 0 ? num : -1*num
end

# --- iteration 2 ---
def makeNegative(num)
  -(num.abs)
end

# http://www.codewars.com/kata/5639bdcef2f9b06ce800005b
# --- iteration 1 ---
def make_string(s)
  s.split.reduce(""){ |acc, el| acc << el[0] }
end

# --- iteration 2 ---
def make_string(s)
  s.split.map(&:chr).join
end

# http://www.codewars.com/kata/5168b125faced29f66000005
# --- iteration 1 ---
def solution(f, s)
  f.scan(s).size
end

# http://www.codewars.com/kata/514a7ac1a33775cbb500001e
# --- iteration 1 ---
def mystery
  result = {"sanity" => 'Hello'}
end

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
# http://www.codewars.com/kata/53da6d8d112bd1a0dc00008b
# --- iteration 1 ---
def reverse_list list
  # solution
  list.reverse
end

# http://www.codewars.com/kata/5168bb5dfe9a00b126000018
# --- iteration 1 ---
def solution(str)
  str.each_char.with_index.to_a
  .sort_by{ |chr, i| -i }
  .map(&:first).join
end

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

# http://www.codewars.com/kata/566efcfbf521a3cfd2000056
# --- iteration 1 ---
def reverse_fun(str)
  str.reverse.chars.zip(str.chars).flatten.first(str.size).join
end

# http://www.codewars.com/kata/5672a98bdbdd995fad00000f
# --- iteration 1 ---
def rps(p1, p2)
  moves = ["rock", "scissors", "paper", "rock"]
  return "Player 1 won!" if moves[moves.index(p1) + 1] == p2
  return "Player 2 won!" if moves[moves.index(p2) + 1] == p1
  "Draw!"
end

# --- iteration 2 ---
def rps(p1, p2)
  return "Draw!" if p1 == p2
  winners = { "rock" => "paper", "scissors" => "rock", "paper" => "scissors" }
  "Player #{winners[p2] == p1 ? 1 :  2} won!"
end

# http://www.codewars.com/kata/56a4872cbb65f3a610000026
# --- iteration 1 ---
def max_rot(n)
  nums = n.to_s.chars.map(&:to_i)
  result = nums.each_index.reduce([]) do |acc, i|
    nums[i..-1] = nums[i..-1].rotate
    acc + [(nums.first(i) + nums[i..-1])]
  end << [n.to_s.chars.map(&:to_i)]
  result.map(&:join).max.to_i
end

# http://www.codewars.com/kata/55d1d6d5955ec6365400006d
# --- iteration 1 ---
def round_to_next_5(n)
  until(n % 5 == 0) do n += 1 end; n
end

# --- iteration 2 ---
def round_to_next_5(n)
  n += 1 until n % 5 == 0; n
end

# http://www.codewars.com/kata/5143b3d15c6bf6448d00005d/
# --- iteration 1 ---
def check_ages?(data, sex, age)
  data.select{ |datum| datum[:sex] == sex }
      .all? { |datum| datum[:age] > age }
end

# --- iteration 2 ---
def check_ages?(data, sex, age)
  data.all? { |d| d[:sex] != sex || d[:age] > age }
end
# http://www.codewars.com/kata/5143b3d15c6bf6448d00005d
# --- iteration 1 ---
def check_ages?(data, sex, age)
  data.select{ |datum| datum[:sex] == sex }
      .all? { |datum| datum[:age] > age }
end

# --- iteration 2 ---
def check_ages?(data, sex, age)
  data.all? { |d| d[:sex] != sex || d[:age] > age }
end

# http://www.codewars.com/kata/552e45cc30b0dbd01100001a
# --- iteration 1 ---
def zipvalidate(postcode)
  puts postcode
  /\A[123460]\d{5}\Z/ === postcode
end

# --- iteration 2 ---
def zipvalidate(code)
  /\A[1-46]\d{5}\Z/ === code
end

# --- iteration 3 ---
def zipvalidate(code)
  /\A[1-46]\d{5}\z/ === code
end

# http://www.codewars.com/kata/552e45cc30b0dbd01100001a/
# --- iteration 1 ---
def zipvalidate(postcode)
  /\A[123460]\d{5}\Z/ === postcode
end
# --- iteration 2 ---
def zipvalidate(code)
  /\A[1-46]\d{5}\z/ === code
end
# http://www.codewars.com/kata/5660aa3d5e011dfd6e000063
# --- iteration 1 ---
def find_spaceship(m)
  return "Spaceship lost forever." unless m.include?("X")
  m.split("
").reverse.each_with_index do |row, i|
    return [row.index("X"), i] if row.include?("X")
  end
end

# http://www.codewars.com/kata/566091b73e119a073100003a
# --- iteration 1 ---
def total_licks(env)
  licks = 252
  env.values.each { |v| licks += v}
  challenge = env.key(env.values.max)
  info = "It took #{licks} licks to get to the tootsie roll center of a tootsie pop."
  info += " The toughest challenge was #{challenge}." if !(env.empty? || env.values.max < 0)
  return info
end

# http://www.codewars.com/kata/52b50a20fa0e77b304000103
# --- iteration 1 ---
def is_santa_clausable(obj)
  ["say_ho_ho_ho", "distribute_gifts", "go_down_the_chimney"].each do |meth|
    return false if obj.methods.grep(/\A#{meth}\z/).empty?
  end; true
end

# --- iteration 2 ---
SC_METHODS = [:say_ho_ho_ho, :distribute_gifts, :go_down_the_chimney]

def is_santa_clausable(obj)
  SC_METHODS.all? { |meth| obj.respond_to?(meth) }
end

# http://www.codewars.com/kata/55d2aee99f30dbbf8b000001
# --- iteration 1 ---
def score_test(tests, right, omit, wrong)
  tests.map do |test_val|
    if test_val == 2 #incorrect
      wrong * (-1)
    elsif test_val == 1 # omitted
      omit
    elsif test_val == 0 # correct
      right
    else
      0
    end
  end.reduce(&:+)
end

# --- iteration 2 ---
def score_test(tests, right, omit, wrong)
  tests.count(0) * right + tests.count(1) * omit - tests.count(2) * wrong
end

# http://www.codewars.com/kata/558fa34727c2d274c10000ae
# --- iteration 1 ---
#preloaded variable: "$dict"

def scrabble_score(str)
  str = str.upcase.delete("^A-Z")
  return 0 if str.nil? || str.empty?
  str.chars.map{ |chr| $dict[chr] }.reduce(:+)
end

# --- iteration 2 ---
def scrabble_score(str)
  str.upcase.chars.reduce(0) { |acc, chr| acc + $dict.fetch(chr, 0) }
end

# http://www.codewars.com/kata/52dbae61ca039685460001ae
# --- iteration 1 ---
CHARS = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
         "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]

def change(a)
  indices = a.chars.map(&:downcase).map do |x|
    CHARS.include?(x) ? CHARS.index(x) : nil
  end.compact
  (1..26).map.with_index { |_, i| indices.include?(i) ? 1 : 0 }.join
end

# --- iteration 2 ---
def change(a)
  ("a".."z").map{ |x| a.downcase.include?(x) ? 1 : 0 }.join
end

# http://www.codewars.com/kata/55b1fd84a24ad00b32000075
# --- iteration 1 ---

def am_I_afraid(day,num)
  case day
  when "Monday"
    num == 12
  when "Tuesday"
    num > 95
  when "Wednesday"
    num == 34
  when "Thursday"
    num == 0
  when "Friday"
    num%2 ==0
  when "Saturday"
    num == 56
  when "Sunday"
    num == 666 || num == -666
  else
    false
  end

end

# http://www.codewars.com/kata/53dc23c68a0c93699800041d
# --- iteration 1 ---
# Smash Words
def smash(words)
  words.join(" ")
end

# http://www.codewars.com/kata/5436f26c4e3d6c40e5000282
# --- iteration 1 ---
def sum_of_n(n)
  result_arr = (0..n.abs).map do |x|
    (0..x.abs).reduce(:+)
  end
  n > 0 ? result_arr : result_arr.map{ |x| -x }
end

# --- iteration 2 ---
def sum_of_n(n)
  sum = 0
  (0..n.abs).map { |x| n > 0 ? sum += x : sum -= x }
end

# http://www.codewars.com/kata/54d22119beeaaaf663000024
# --- iteration 1 ---
def shades_of_grey(n)
  return [] if n < 1
  (1..254).lazy.map{ |x| "#" << ("%02x" % x) * 3 }.first(n)
end


# http://www.codewars.com/kata/5603a4dd3d96ef798f000068/
# --- iteration 1 ---
def share_price(invested, changes)
  "%.2f" % changes.reduce(invested) { |acc, el| acc += (acc * el.fdiv(100)) }
end
# http://www.codewars.com/kata/50654ddff44f800200000007
# --- iteration 1 ---
def solution(a, b)
  x = [a,b].sort_by(&:length).cycle
  x.first + x.next + x.next
end

# --- iteration 2 ---
def solution(a, b)
  a.size > b.size ? "#{b}#{a}#{b}" : "#{a}#{b}#{a}"
end

# --- iteration 3 ---
def solution(a, b)
  a<b ? a+b+a : b+a+b
end

# http://www.codewars.com/kata/54557d61126a00423b000a45
# --- iteration 1 ---
def shorter_reverse_longer(a,b)
  return "#{b}#{a.reverse}#{b}" if a.size == b.size
  [a, b].sort_by(&:size).tap{ |x| return "#{x[0]}#{x[1].reverse}#{x[0]}"  }
end

# http://www.codewars.com/kata/545cff101288c1d2da0006fb
# --- iteration 1 ---
def pagination_text(page_number, page_size, total_products)
  (1..total_products)
    .each_slice(page_size).to_a
    .[](page_number-1)
    .tap { |x| return "Showing #{x.first} to #{x.last} of #{total_products} Products." }
end

# http://www.codewars.com/kata/552ab0a4db0236ff1a00017a
# --- iteration 1 ---
def sillycase(str)
  str.chars.map.with_index do |chr, i|
    i >= (str.size.to_f / 2).ceil ? chr.upcase : chr.downcase
  end.join
end


# http://www.codewars.com/kata/52ed326b8df6540e06000029
# --- iteration 1 ---
def goto(l, b)
  [l, b].all? { |x| %w(0 1 2 3).include?(x.to_s) } ? b.to_i - l : 0
end


# http://www.codewars.com/kata/5507309481b8bd3b7e001638
# --- iteration 1 ---
def number_property(n)
  [is_prime?(n), n.even?, n % 10 == 0]
end

def is_prime?(n)
  return false if n <= 1
  return true if n == 2
  (2..Math.sqrt(n).ceil).each { |x| return false if n % x == 0 }
  true
end

# http://www.codewars.com/kata/56a3f08aa9a6cc9b75000023
# --- iteration 1 ---
def validate_usr(name)
  name.tr("^0-9a-z_", "") == name && (4..16) === name.size
end

# --- iteration 2 ---
def validate_usr(name)
  !!name[/\A[a-z0-9_]{4,16}\z/]
end

# http://www.codewars.com/kata/52adc142b2651f25a8000643
# --- iteration 1 ---
class Sleigh
  def authenticate(name, password)
    name == "Santa Claus" && password == "Ho Ho Ho!"
  end
end

# http://www.codewars.com/kata/55eea63119278d571d00006a
# --- iteration 1 ---
def next_id(arr)
  indices = arr.each_index.to_a
  (indices - arr).empty? ? arr.size : (indices - arr).min
end

# --- iteration 2 ---
def next_id(arr)
  ((0..arr.size).to_a - arr).min
end

# http://www.codewars.com/kata/snail
# --- Iteration 1 (iterative) ---
def snail(arr)
  return arr.first if arr.first.length < 1
  result = []
  until arr.length == 0 do
    current_length = arr.first.length
    result << arr.delete_at(0)
    arr = arr.transpose.reverse.each_slice(current_length).to_a.flatten(1)
  end
  result.flatten
end

# --- Iteration 2 (recursive) ---
def snail(arr)
  return arr.first if arr.length == 1
  result = arr.delete_at(0)
  arr = arr.transpose.reverse
  return (result << snail(arr)).flatten
end

=begin NOTE
* The recursive version can be written way more succintly as:
def snail(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end
* These solutions are all very slow, and all mutate the array, which they shouldn't.
=end


# http://www.codewars.com/kata/56143efa9d32b3aa65000016
# --- iteration 1 ---
def sum_circles(*args)
  radii = args.map{ |diam| diam.fdiv(2) }
  "We have this much circle: #{radii.reduce(0){ |a, r| a + (Math::PI * (r ** 2)) }.round}"
end

# http://www.codewars.com/kata/51f41b98e8f176e70d0002a8
# --- iteration 1 ---
def sortme(names)
  names.sort
end

# http://www.codewars.com/kata/5174a4c0f2769dd8b1000003
# --- iteration 1 ---
def solution(nums)
  nums.try(:sort)  || []
end

class Object
  def try(meth, *args)
    return nil unless self
    respond_to?(meth) ? send(meth, *args) : nil
  end
end

# --- iteration 2 ---
def solution(n)
  n.sort rescue []
end

# --- iteration 3 ---
def solution(n)
  Array(n).sort
end

# --- iteration 4 ---
def solution(n)
  [*n].sort
end

# --- iteration 5 ---
def solution(nums)
  (nums || []).sort
end

nd


# http://www.codewars.com/kata/52ab60b122e82a6375000bad
# --- iteration 1 ---
def sort_reindeer(names)
  names.sort_by{ |name| name.split[1] }
end


# http://www.codewars.com/kata/52aeb2f3ad0e952f560005d3
# --- iteration 1 ---
def sort_gift_code(code)
  code.chars.sort.join("")
end

# http://www.codewars.com/kata/51f9543d293a10a7a700004f
# --- iteration 1 ---
def solution(array, key)
  array.sort_by{ |hsh| hsh[key] }
end

# http://www.codewars.com/kata/5650ab06d11d675371000003
# --- iteration 1 ---
def split_in_parts (str, len)
  str.chars
     .each_slice(len)
     .to_a
     .map(&:join)
     .join(" ")
end
# http://www.codewars.com/kata/split-the-bill/
# --- iteration 1 ---
def split_the_bill(x)
  avg = (x.values.reduce(:+)).fdiv(x.keys.size)
  x.each { |k, v| x[k] = (v - avg).round(2) }
end
# http://www.codewars.com/kata/56b8903933dbe5831e000c76
# --- iteration 1 ---
def spoonerize(words)
  words = words.split(" ")
  words[1][0], words[0][0] = words[0][0], words[1][0]
  words.join(" ")
end
# http://www.codewars.com/kata/546e2562b03326a88e000020
# --- iteration 1 ---
def square_digits num
  # code goes here
  result = ""
  num.to_s.chars.each { |x| result += (x.to_i ** 2).to_s }
  result.to_i
end

# http://www.codewars.com/kata/515e271a311df0350d00000f
# --- iteration 1 ---
def squareSum(numbers)
  numbers.inject { |sum, x| sum += x ** 2 }
end

# http://www.codewars.com/kata/56f173a35b91399a05000cb7/ 
# --- iteration 1 ---
def find_longest(str)
  str.split.map(&:size).max
end
# http://www.codewars.com/kata/5264d2b162488dc400000001
# --- iteration 1 ---
def spinWords(string)
  string.split(" ")
        .reduce([]){ |acc, word| acc << (word.size >= 5 ? word.reverse : word) }
        .join(" ")
end

# --- iteration 2 ---
def spinWords(str)
  str.gsub(/\w+/) { |w| w.size < 5 ? w : w.reverse }
end

# --- iteration 3 ---
def spinWords(str)
  str.gsub(/\w{5,}/, &:reverse)
end

# http://www.codewars.com/kata/5264d2b162488dc400000001/
# --- iteration 1 ---
def spinWords(string)
  string.split(" ")
        .reduce([]){ |acc, word| acc << (word.size >= 5 ? word.reverse : word) }
        .join(" ")
end

# --- iteration 2 ---
def spinWords(str)
  str.gsub(/\w+/) { |w| w.size < 5 ? w : w.reverse }
end

# --- iteration 3 ---
def spinWords(str)
  str.gsub(/\w{5,}/, &:reverse)
end
# http://www.codewars.com/kata/51f2d1cafc9c0f745c00037d
# --- iteration 1 ---
def solution(str, ending)
  /#{ending}\z/ === str
end

# --- iteration 2 ---
def solution(str, ending)
  str.end_with?(ending)
end

# http://www.codewars.com/kata/5639bdcef2f9b06ce800005b/
# --- iteration 2 ---
def make_string(s)
  s.split.reduce(""){ |acc, el| acc << el[0] }
end

# --- iteration 2 ---
def make_string(s)
  s.split.map(&:chr).join
end
# http://www.codewars.com/kata/string-suffixes/
def string_suffix(str)
 count = 0
 (0...str.size).each do |suf_idx|
   new_str = str[suf_idx..-1]
   count += new_str.each_char.with_index
     .find_index { |char, j| str[j] != char } || new_str.size
 end
 count
end
# http://www.codewars.com/kata/55c90cad4b0fe31a7200001f
# --- iteration 1 ---
def build_string(*args)
  "I like #{args.join(", ")}!"
end

# http://www.codewars.com/kata/54fdadc8762e2e51e400032c
# --- iteration 1 ---
def my_parse_int(string)
  string.strip =~ /\A(\d+)\z/ ? $1.to_i : "NaN"
end

# http://www.codewars.com/kata/563b74ddd19a3ad462000054
# --- iteration 1 ---
def stringy(size)
  (0...size).map{ |x| x.even? ? 1 : 0 }.join("")
end

# --- iteration 2 ---
def stringy(size)
  '10'.chars.cycle.take(size).join("")
end

# --- iteration 3 ---
def stringy(size)
  "".ljust(size, "10")
end

# http://www.codewars.com/kata/56c22c5ae8b139416c00175d
# --- iteration 1 ---
def match(candidate, job)
  candidate["min_salary"] * 0.9 <= job["max_salary"]
end

# http://www.codewars.com/kata/565b112d09c1adfdd500019c/
# --- iteration 1 ---
def nth_char(words)
  (0...words.count).map{ |i| words[i][i] }.join
end
# http://www.codewars.com/kata/53dc54212259ed3d4f00071c
# --- iteration 1 ---
# Sum Numbers
def sum(numbers)
  numbers.reduce(0, &:+)
end

# http://www.codewars.com/kata/55eeddff3f64c954c2000059/
# --- iteration 1 ---
def sum_consecutives(s)
  current = s.first
  result = []
  s.each_with_index do |num, i|
    if num == s[i-1] && !result.empty?
      result[-1] += num
    else
      result << num
    end
  end
  result
end

# --- iteration 2 ---
def sum_consecutives(nums)
  nums.chunk { |num| num }.map{ |arr| arr.last.reduce(&:+) }
end
# http://www.codewars.com/kata/540c33513b6532cd58000259
# --- iteration 1 ---
def sum(*nums)
  nums.reduce(:+)
end


# http://www.codewars.com/kata/54c2fc0552791928c9000517/
# --- iteration 1 ---
def f(n,m)
  (n/m)*(m-1)*m/2+(n%m)*(n%m+1)/2
end
# http://www.codewars.com/kata/55fd2d567d94ac3bc9000064
# --- iteration 1 ---
def row_sum_odd_numbers(n)
  n ** 3
end

# http://www.codewars.com/kata/sum-of-pairs/
# --- iteration 1 ---
def sum_pairs(ints, sum)
  return nil if ints.length < 2
  seen_vals = {}
  ints.each_index do |i|
    n = sum - ints[i]
    if seen_vals["#{n}"]
      return[n, ints[i]]
    else
      seen_vals["#{ints[i]}"] = true
    end
  end
  nil
end

# --- iteration 2 ---
require 'set'
def sum_pairs(ints, sum)
  return nil unless ints.length >= 2
  seen_vals = Set.new
  ints.each_with_index do |m, idx|
    n = sum - m
    return [n, m] if seen_vals.include?(n)
    seen_vals.add(m)
  end
  nil
end
# http://www.codewars.com/kata/5715eaedb436cf5606000381/
# --- iteration 1 ---
def positive_sum(arr)
  arr.reduce(0) { |acc, el| el > 0 ? acc += el : acc }
end
# http://www.codewars.com/kata/555eded1ad94b00403000071
# --- iteration 1 ---
def series_sum(n)
  return "%.2f" % n if n < 2
  "%.2f" % (1..n).map { |el| 1.0 / (((el-1)*3)+1) }.reduce(&:+)
end

# http://www.codewars.com/kata/555eded1ad94b00403000071
# --- iteration 1 ---
def series_sum(n)
  return "%.2f" % n if n < 2
  "%.2f" % (1..n).map { |el| 1.0 / (((el-1)*3)+1) }.reduce(&:+)
end

# http://www.codewars.com/kata/55da6c52a94744b379000036/
# --- iteration 1 ---
def sum_from_string(str)
  str.scan(/\d+/).reduce(0) { |acc, el| acc + el.to_i }
end
# http://www.codewars.com/kata/55da6c52a94744b379000036
# --- iteration 1 ---
def sum_from_string(str)
  str.scan(/\d+/).reduce(0) { |acc, el| acc + el.to_i }
end

# http://www.codewars.com/kata/52f3149496de55aded000410
# --- iteration 1 ---
def sumDigits(number)
  number.to_s.chars.map(&:to_i).map(&:abs).reduce(&:+)
end

# --- iteration 2 ---
def sumDigits(number)
  number.abs.to_s.chars.map(&:to_i).reduce(&:+)
end

# http://www.codewars.com/kata/565f5825379664a26b00007c
# --- iteration 1 ---
def get_size(w,h,d)
  [(2*w*h + 2*d*h + 2*w*d), w*h*d]
end

# http://www.codewars.com/kata/55c933c115a8c426ac000082
# --- iteration 1 ---
def eval_object(v)
  v["a"].send(v["operation"], v["b"])
end

# http://www.codewars.com/kata/55c933c115a8c426ac000082
# --- iteration 1 ---
def eval_object(v)
  v["a"].send(v["operation"], v["b"])
end

# http://www.codewars.com/kata/54da539698b8a2ad76000228
# --- iteration 1 ---
def isValidWalk(walk)
  return false unless walk.count == 10
  dir_counts = ['n', 's', 'e', 'w'].reduce({}) do |acc, dir|
    acc.merge({dir => walk.count(dir)})
  end
  return false unless (dir_counts['n'] == dir_counts['s'] && dir_counts['e'] == dir_counts['w'])
  true
end

# --- iteration 2 ---
def isValidWalk(walk)
  return false unless walk.count == 10
  offsets = walk.reduce([0, 0]) do |acc, el|
    acc[0] += 1 if el == 'n'
    acc[0] -= 1 if el == 's'
    acc[1] += 1 if el == 'e'
    acc[1] -= 1 if el == 'w'
    acc
  end
  offsets == [0, 0]
end

# http://www.codewars.com/kata/56314d3c326bbcf386000007
# --- iteration 1 ---
def tax_calculator(total)
  return 0 unless total.kind_of?(Numeric) && total >= 0
  accumulator = 0
  if total <= 10
    return (total * 0.1).round(2)
  elsif total <= 20
    return (1 + (total - 10) * 0.07).round(2)
  elsif total <= 30
    return (1 + 0.7 + (total - 20) * 0.05).round(2)
  else
    return (1 + 0.7 + 0.5 + (total - 30) * 0.03).round(2)
  end
end

# http://www.codewars.com/kata/take-a-ten-minute-walk/
# --- iteration 1 ---
def isValidWalk(walk)
  return false unless walk.count == 10
  dir_counts = ['n', 's', 'e', 'w'].reduce({}) do |acc, dir|
    acc.merge({dir => walk.count(dir)})
  end
  return false unless (dir_counts['n'] == dir_counts['s'] && dir_counts['e'] == dir_counts['w'])
  true
end

# --- iteration 2 ---def isValidWalk(walk)
  return false unless walk.count == 10
  offsets = walk.reduce([0, 0]) do |acc, el|
    acc[0] += 1 if el == 'n'
    acc[0] -= 1 if el == 's'
    acc[1] += 1 if el == 'e'
    acc[1] -= 1 if el == 'w'
    acc
  end
  offsets == [0, 0]
end
# http://www.codewars.com/kata/55e8beb4e8fc5b7697000036
# --- iteration 1 ---
class Hero
  def initialize
    @position = [0, 0]
  end

  def move(dir)
    case dir
    when "up"
      y_coord == 0 ? fail : @position[0] -= 1
    when "down"
      y_coord == 4 ? fail : @position[0] += 1
    when "left"
      x_coord == 0 ? fail : @position[1] -= 1
    when "right"
      x_coord == 4 ? fail : @position[1] += 1
    end
  end

  def position
    @position.join
  end

  def y_coord
    @position[0]
  end

  def x_coord
    @position[1]
  end
end

# http://www.codewars.com/kata/55e8beb4e8fc5b7697000036/
# --- iteration 1 ---
class Hero
  def initialize
    @position = [0, 0]
  end

  def move(dir)
    case dir
    when "up"
      y_coord == 0 ? fail : @position[0] -= 1
    when "down"
      y_coord == 4 ? fail : @position[0] += 1
    when "left"
      x_coord == 0 ? fail : @position[1] -= 1
    when "right"
      x_coord == 4 ? fail : @position[1] += 1
    end
  end

  def position
    @position.join
  end

  def y_coord
    @position[0]
  end

  def x_coord
    @position[1]
  end
end
# http://www.codewars.com/kata/537e18b6147aa838f600001b
# --- iteration 1 ---
def justify(text, width)
  current_count = 0
  words_with_len = text.split.each_with_object([]) do |word, list|
    if list.size > 0
      current_count = list.last.last
    end
    current_count += word.length + 1
    if current_count > width+1
      list << ['
', -1]
      current_count = word.length + 1
    end
    list << [word, current_count]
  end
  lengthened_arrs = words_with_len.map(&:first).join(" ").split("\n").map{ |x| x.split(" ") }
  expanded_strs = lengthened_arrs.map{ |x| expand(x, width) }
  expanded_strs.last.gsub!(/\s+/, " ")
  expanded_strs.last.strip! if expanded_strs.last
  expanded_strs.join("
")
end

def expand(words, width)
  num_spaces = width - (words.inject(0){ |acc, word| acc += word.length})
  space_places = words.count - 1
  return words.first if space_places == 0
  space_counts = ([num_spaces/space_places] * space_places).map.with_index do |x, i|
    if i < num_spaces%space_places
      x + 1
    else
      x
    end
  end
  words.zip(space_counts.map{ |x| " " * x }).join
end

# http://www.codewars.com/kata/55d38b959f9c33f3fb00007d
# --- iteration 1 ---
def adjust(coin, price)
  price % coin == 0 ? price : ((price / coin) + 1) * coin
end

# --- iteration 2 ---
def adjust(coin, price)
  price.fdiv(coin).ceil*coin
end

# http://www.codewars.com/kata/559590633066759614000063
# --- iteration 1 ---
def min_max(prices)
  [prices.min, prices.max]
end

# --- iteration 2 ---
def min_max(lst)
  lst.minmax
end

# http://www.codewars.com/kata/54147087d5c2ebe4f1000805
# --- iteration 1 ---
def _if(bool, if_true, if_false)
  bool ? if_true.call : if_false.call
end

# http://www.codewars.com/kata/56d31aaefd3a52902a000d66
# --- iteration 1 ---
def rad_ladies(name)
  name.delete("^a-zA-Z24680 !").upcase
end

# --- iteration 2 ---
def rad_ladies(name)
  name.upcase.delete("^A-Z !")
end

# http://www.codewars.com/kata/56b5ebaa26fd54188b000018
# --- iteration 1 ---
def amicable_numbers(n1,n2)
  sum_of_factors(n1) == n2 || sum_of_factors(n2) == n1
end

def sum_of_factors(n)
  [*1...n].reduce{ |acc, i| n % i == 0 ? acc + i : acc}
end

# http://www.codewars.com/kata/56b5ebaa26fd54188b000018
# --- iteration 1 ---
def amicable_numbers(n1,n2)
  sum_of_factors(n1) == n2 || sum_of_factors(n2) == n1
end

def sum_of_factors(n)
  [*1...n].reduce{ |acc, i| n % i == 0 ? acc + i : acc}
end
# http://www.codewars.com/kata/55d410c492e6ed767000004f
# --- iteration 1 ---
def vowel_2_index(str)
  str.chars.map.with_index { |chr, i| /[aeiou]/i === chr ? i+1 : chr }.join
end


# http://www.codewars.com/kata/55aa7acc42216b3dd6000022
# --- iteration 1 ---
def owl_pic(text)
  trimmed = text.upcase.delete("^8WTYUIOAHXVM")
  "#{trimmed}''0v0''#{trimmed.reverse}"
end

# http://www.codewars.com/kata/546a3fea8a3502302a000cd2
# --- iteration 1 ---
def find_the_ball start, swaps
  current_pos = start
  swaps.each do |swap|
    if current_pos == swap[0]
      current_pos = swap[1]
    elsif current_pos == swap[1]
      current_pos = swap[0]
    end
  end
  current_pos
end

# http://www.codewars.com/kata/56eff1e64794404a720002d2
# --- iteration 1 ---
def testit(s)
  s.downcase.delete("^word").scan(/w[word]?o[word]?r[word]?d/).count
end

class String
  def squish
    chars.chunk{ |x| x }.map(&:first).join
  end
end

# --- iteration 2 ---
def testit(s)
  s.scan(/w.*?o.*?r.*?d/i).size
end

# http://www.codewars.com/kata/56b8b0ae1d36bb86b2000eaa/
# --- iteration 1 ---
def convert(time)
  time.strftime("%H:%M:%S,%L")
end
# http://www.codewars.com/kata/56b8b0ae1d36bb86b2000eaa
# --- iteration 1 ---
def convert(time)
  time.strftime("%H:%M:%S,%L")
end

# http://www.codewars.com/kata/56598d8076ee7a0759000087
# --- iteration 1 ---
def calculate_tip(amount, rating)
  ratings = Hash[(%w(terrible poor good great excellent).zip([0.0, 0.05, 0.1, 0.15, 0.2]))]
  ratings[rating.downcase] ? (ratings[rating.downcase] * amount).ceil : "Rating not recognised"
end

# http://www.codewars.com/kata/title-case/
# --- iteration 1 ---
def title_case(title, minor_words = "")
  title, minor_words = [title, minor_words].map {|x| x.split.map(&:capitalize)}
  title.map!.with_index do |word, i|
    minor_words.include?(word) && i > 0 ? word.downcase : word
  end.join(" ")
end
# http://www.codewars.com/kata/56311e4fdd811616810000ce/
# --- iteration 1 ---
class List
  def count_spec_digits(int_list, dig_list)
    dig_list.zip(
      dig_list.map{ |n| int_list.join.count(n.to_s) }
    )
  end
end
# http://www.codewars.com/kata/training-js-number-7-if-dot-else-and-ternary-operator
# --- iteration 1 ---
def sale_hotdogs(n)
  return 0 if n == 0
  (100 - (n>4 ? 5 : 0) - (n>9 ? 5 : 0)) * n
end
# http://www.codewars.com/kata/568d0dd208ee69389d000016
# --- iteration 1 ---
def rental_car_cost(d)
  40*d - if d >= 7
           50
         elsif d >= 3
            20
         else
           0
         end
end

# --- iteration 2 ---
def rental_car_cost(d)
  (d * 40)
  .tap { |x| return x if d < 3 }
  .tap { |x| return x - 20 if d < 7 } - 50
end

# --- iteration 3 ---
def rental_car_cost(d)
  return 40*d if d < 3
  d < 7 ? 40 * d - 20 : 40 * d - 50
end

# http://www.codewars.com/kata/53907ac3cd51b69f790006c5
# --- iteration 1 ---
def triangle_type (a, b, c)
  angles = (0.upto(2)).with_object([]) do |i, acc|
    acc << get_angle(*([a, b, c].rotate(i).map(&:to_f)))
  end
  angles_sum = angles.reduce(&:+).round(4)
  return 0 if angles_sum != 180.0 || angles.include?(180.0) || angles.include?(-1)
  return 1 if angles.all?{ |angle| angle < 90.0 }
  return 2 if angles.any?{ |angle| angle == 90.0 }
  return 3 if angles.any?{ |angle| angle > 90.0 }
  0
end

def get_angle(a, b, c)
  (Math.acos((a**2.0 + b**2.0 - c**2.0) / (2.0*a*b)) * (180.0/Math::PI)).round(5)
rescue
  -1
end

# http://www.codewars.com/kata/525e5a1cb735154b320002c8
# --- iteration 1 ---
def triangular(n)
  n > 0 ? (1..n).reduce(&:+) : 0
end

# --- iteration 2 ---
def triangular(n)
  (1..n).reduce(0, &:+)
end

# http://www.codewars.com/kata/tribonacci-sequence/
# --- iteration 1 ---
def tribonacci(signature, n)
  indices = (0..n+2).to_a
  indices.each do |idx|
    if idx < 3
      indices[idx] = signature[idx]
    else
      indices[idx] = indices[idx-3..idx-1].reduce(&:+)
    end
  end.first(n)
end

# --- iteration 2 ---
def tribonacci(sig, n)
  arr = Array.new(n) { |i| sig[i] || nil }
  arr.map!.with_index { |x, i| x || arr[i-3...i].reduce(&:+) }
end
# http://www.codewars.com/kata/556deca17c58da83c00002db
# --- iteration 1 ---
def tribonacci(signature, n)
  indices = (0..n+2).to_a
  indices.each do |idx|
    if idx < 3
      indices[idx] = signature[idx]
    else
      indices[idx] = indices[idx-3..idx-1].reduce(&:+)
    end
  end.first(n)
end

# --- iteration 2 ---
def tribonacci(sig, n)
  arr = Array.new(n) { |i| sig[i] || nil }
  arr.map!.with_index { |x, i| x || arr[i-3...i].reduce(&:+) }
end

# http://www.codewars.com/kata/563fb342f47611dae800003c
# --- iteration 1 ---
def trim(str, size)
  if str.size < 3
    return "#{str.slice(0...size)}..."
  elsif str.size <= size
    return str
  else
    new_sz = (size > 3 ? (size-3).abs : size)
    return "#{str.slice(0...new_sz)}..."
  end
end
# http://www.codewars.com/kata/56b7526481290c2ff1000c75/
# --- iteration 1 ---
def triple_shiftian(base, n, memo={})
  if n < 3
    return base[n]
  else
    return_val = (4 * (memo[(n-1)] || triple_shiftian(base, n-1, memo))) \
                 - (5 * (memo[(n-2)] || triple_shiftian(base, n-2, memo))) \
                 + (3 * (memo[(n-3)] || triple_shiftian(base, n-3, memo)))
    memo[n] ||= return_val
    return return_val
  end
end

# --- iteration 2 ---
def triple_shiftian(base, n, memo = {})
  return memo[n] if memo[n]
  return base[n] if n < 3
  memo[n] = 4*triple_shiftian(base, n-1, memo) - 5*triple_shiftian(base, n-2, memo) + 3*triple_shiftian(base, n-3, memo)
end

# --- iteration 3 ---
def triple_shiftian(b, n)
  (3..n).each{ |i| b << 4*b[i-1] - 5*b[i-2] + 3*b[i-3] } and n < 3 ? b[n] : b.last
end
# http://www.codewars.com/kata/56b7526481290c2ff1000c75
# --- iteration 1 ---
def triple_shiftian(base, n, memo={})
  if n < 3
    return base[n]
  else
    return_val = (4 * (memo[(n-1)] || triple_shiftian(base, n-1, memo))) \
                 - (5 * (memo[(n-2)] || triple_shiftian(base, n-2, memo))) \
                 + (3 * (memo[(n-3)] || triple_shiftian(base, n-3, memo)))
    memo[n] ||= return_val
    return return_val
  end
end

# --- iteration 2 ---
def triple_shiftian(base, n, memo = {})
  return memo[n] if memo[n]
  return base[n] if n < 3
  memo[n] = 4*triple_shiftian(base, n-1, memo) - 5*triple_shiftian(base, n-2, memo) + 3*triple_shiftian(base, n-3, memo)
end

# --- iteration 3 ---
def triple_shiftian(b, n)
  (3..n).each{ |i| b << 4*b[i-1] - 5*b[i-2] + 3*b[i-3] } and n < 3 ? b[n] : b.last
end

# http://www.codewars.com/kata/55d5434f269c0c3f1b000058/
# --- iteration 1 ---
def triple_double(num1,num2)
  matches_num1 = num1.to_s.scan(/(0{3}|1{3}|2{3}|3{3}|4{3}|5{3}|6{3}|7{3}|8{3}|9{3})/)
    .flat_map(&:first).map{ |x| x[0] }
  matches_num2 = num2.to_s.scan(/(0{2}|1{2}|2{2}|3{2}|4{2}|5{2}|6{2}|7{2}|8{2}|9{2})/)
    .flat_map(&:first).map{ |x| x[0] }
  matches_num1.each { |x| return 1 if matches_num2.include?(x) }
  0
end

# obviously not ideal; /(0-9){3}/ didn't work of course, and I couldn't figure
# out how to match three of the same integer when I don't know what the integer
# will be.

# --- iteration 2 ---
def triple_double(a, b)
  a_trips = a.to_s.scan(/(\d)\1{2}/).flatten(1)
  a_trips.each { |trip| return 1 if b.to_s =~ /#{trip}{2}/ }; 0
end
# http://www.codewars.com/kata/52180ce6f626d55cf8000071
# --- iteration 1 ---
def str_to_hash(str)
  Hash[str.scan(/[a-z]/).map(&:to_sym).zip(str.scan(/\d/).map(&:to_i))]
end

# http://www.codewars.com/kata/511f11d355fe575d2c000001
# --- iteration 1 ---
def two_oldest_ages(ages)
  [ages.slice!(ages.index(ages.max)), ages.max].reverse
end

# --- iteration 2 ---
def two_oldest_ages(ages)
  ages.sort.last(2)
end

# http://www.codewars.com/kata/5656b6906de340bd1b0000ac/
# --- iteration 1 ---
def longest(a1, a2)
  (a1 + a2).chars.sort.uniq.join
end
# http://www.codewars.com/kata/54fdaa4a50f167b5c000005f/
# --- iterations ---
def get_status(is_busy)
  status = is_busy ? "busy" : "available"
  return { "status" => status }
end
# http://www.codewars.com/kata/55c28f7304e3eaebef0000da
# --- iteration 1 ---
def create_array(n)
  res=[]
  i=1
  while i <= n
    res+=[i]
    i += 1
  end
  return res
end

# --- iteration 2 ---
def create_array(n)
  (1..n).to_a
end

# http://www.codewars.com/kata/54e6533c92449cc251001667/solutions/ruby/me/best_practice
# --- Iteration 1 ---
def unique_in_order(iterable)
  iterable = iterable.split("") if iterable.is_a?(String)
  iterable.each_with_object([]) do |char, acc|
    acc << char unless char == acc.last
  end
end

# --- Iteration 2 ---
def unique_in_order(iterable)
  (iterable.is_a?(Array) ? iterable : iterable.chars).each_with_object([]) do |char, acc|
    acc << char unless acc.last == char
  end
end

# --- Iteration 3 ---
def unique_in_order(iterable)
  (iterable.is_a?(Array) ? iterable : iterable.chars).chunk{ |x| x }.map(&:first)
end

=begin NOTES
* Use `String#chars` instead of `String#split("")`
* Use chunk when you want to group consecutive elements in an array by some condition
=end
# http://www.codewars.com/kata/540c013634e6bac0350000a5
# --- iteration 1 ---
def project_partners(n)
  (n * n - n)/2
end


# http://www.codewars.com/kata/536c738e49aa8b663b000301
# --- iteration 1 ---
def sum(*args)
  args.keep_if{ |arg| arg.kind_of?(Integer) }.reduce(:+)
end

# http://www.codewars.com/kata/540de1f0716ab384b4000828
# --- iteration 1 ---
def spread(f, x)
  f.(*x)
end

# --- iteration 2 ---
def spread(f, x)
  f[*x]
end

# http://www.codewars.com/kata/56445cc2e5747d513c000033
# --- iteration 1 ---
def validate(msg)
  /\AMDZHB \d{2} \d{3} [A-Z]+ \d{2} \d{2} \d{2} \d{2}\z/ ===  msg
end

# http://www.codewars.com/kata/52774a314c2333f0a7000688
# --- iteration 1 ---
def valid_parentheses(str)
  stack = Stack.new
  str.each_char do |chr|
    if chr == "("
      stack.push("x")
    elsif chr == ")"
      return false if stack.empty?
      stack.pop
    end
  end
  stack.empty?
end

class Stack
  def initialize
    @elements = []
  end

  def empty?
    @elements.empty?
  end

  def push(el)
    @elements.unshift(el)
  end

  def pop
    @elements.shift
  end
end

# http://www.codewars.com/kata/56a25ba95df27b7743000016
# --- iteration 1 ---
def validate_code(code)
  /\A[1-3]/ === code.to_s
end

# --- iteration 2 ---
def validate_code(code)
  !!code.to_s[/\A[1-3]/]
end

# http://www.codewars.com/kata/5418a1dd6d8216e18a0012b2/
# --- iteration 1 ---
def validate(num)
  num = num.to_s.chars.map(&:to_i)
  # double every other digit
  if num.length % 2 == 0
    num.map!.with_index do |x, i|
      i % 2 == 0 ? x * 2 : x
    end
  else
    num.map!.with_index do |x, i|
    i % 2 != 0 ? x * 2 : x
    end
  end

  # replace two-digit numbers
  num.map! do |x|
    if x > 9
      x.to_s.chars.map(&:to_i).reduce(&:+) <= 9 ? x.to_s.chars.map(&:to_i).reduce(&:+) : x-9
    else
      x
    end
  end
  num.reduce(&:+) % 10 == 0
end
# --- iteration 2 ---
def validate(num)
  num.to_s.chars.map(&:to_i).each.with_index.reduce(0) do |acc, (el, i)|
    if num.to_s.length % 2 == 0
      el *= 2 if i % 2 == 0
    else
      el *= 2 if i % 2 != 0
    end
    acc + (el > 9 ? el-9 : el)
  end % 10 == 0
end

# --- iteration 3 ---
def validate(num)
  num.to_s.chars.map(&:to_i).each.with_index.reduce(0) do |acc, (el, i)|
    num.to_s.length % 2 == 0 ? (i % 2 == 0 && el *= 2) : (i % 2 != 0 && el *= 2)
    acc + (el > 9 ? el-9 : el)
  end % 10 == 0
end
# http://www.codewars.com/kata/5418a1dd6d8216e18a0012b2
# --- iteration 1 ---
def validate(num)
  num = num.to_s.chars.map(&:to_i)

  # double every other digit
  if num.length % 2 == 0
    num.map!.with_index do |x, i|
      i % 2 == 0 ? x * 2 : x
    end
  else
    num.map!.with_index do |x, i|
    i % 2 != 0 ? x * 2 : x
    end
  end

  # replace two-digit numbers
  num.map! do |x|
    if x > 9
      x.to_s.chars.map(&:to_i).reduce(&:+) <= 9 ? x.to_s.chars.map(&:to_i).reduce(&:+) : x-9
    else
      x
    end
  end
  num.reduce(&:+) % 10 == 0
end

# --- iteration 2 ---
def validate(num)
  num.to_s.chars.map(&:to_i).each.with_index.reduce(0) do |acc, (el, i)|
    if num.to_s.length % 2 == 0
      el *= 2 if i % 2 == 0
    else
      el *= 2 if i % 2 != 0
    end
    acc + (el > 9 ? el-9 : el)
  end % 10 == 0
end

# --- iteration 3 ---
def validate(num)
  num.to_s.chars.map(&:to_i).each.with_index.reduce(0) do |acc, (el, i)|
    num.to_s.length % 2 == 0 ? (i % 2 == 0 && el *= 2) : (i % 2 != 0 && el *= 2)
    acc + (el > 9 ? el-9 : el)
  end % 10 == 0
end

# http://www.codewars.com/kata/54d418bd099d650fa000032d
# --- iteration 1 ---
def vampire_test(a,b)
  product_digits = (a*b).to_s.split("")
  a_digits, b_digits = a.to_s.split(""), b.to_s.split("")
  return false if product_digits.sort != (a_digits + b_digits).sort
  true
end

# http://www.codewars.com/kata/54ff3102c1bad923760001f3
# --- iteration 1 ---
def getCount(str)
  str.tr("^aeiou", "").size
end

# http://www.codewars.com/kata/5547929140907378f9000039
# --- iteration 1 ---
def shortcut(s); s.tr("aeiou", ""); end

# --- iteration 2 ---
def shortcut(s)
  s.delete("aeiou")
end

# --- iteration 3 ---
def shortcut(s)
  s.chars.reject { |x| x =~ /[aeiou]/ }.join("")
end

# http://www.codewars.com/kata/55192f4ecd82ff826900089e
# --- iteration 1 ---
def divide(weight)
  weight > 3 && weight.even?
end

# http://www.codewars.com/kata/53921994d8f00b93df000bea
# --- iteration 1 ---
def contentWeight(bottle_weight, scale)
  multiplier = scale.split.first.to_i
  describer = scale.split.last
  denominator = multiplier + 1
  numerator = describer == "larger" ? denominator - 1 : 1
  bottle_weight * numerator.fdiv(denominator)
end

# --- iteration 2 ---
def contentWeight(btl_wght, s)
  btl_wght / (s.to_i + 1) * (s.include?("g") ? s.to_i : 1)
end

# http://www.codewars.com/kata/weird-string-case/
# --- iteration 1 ---
def weirdcase(string)
  string.split(" ").map! do |word|
    word.chars.map.with_index { |char, idx| idx.even? ? char.upcase : char.downcase }.join
  end.join(" ")
end

# --- iteration 2 ---
def weirdcase(string)
  string.gsub(/\w{1,2}/, &:capitalize)
end
# http://www.codewars.com/kata/5302d846be2a9189af0001e4
# --- iteration 1 ---
def say_hello(name, city, state)
  "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

# --- iteration 2 ---
def say_hello(name, city, state)
  "Hello, %s! Welcome to %s, %s!" % [name.join(" "), city, state]
end

# http://www.codewars.com/kata/55ed10a402a0c6e3c3000021
# --- iteration 1 ---
def pointless *args
  args.each do |arg|
    puts args.map(&:chr)
  end
  "Rick Astley"
end

# http://www.codewars.com/kata/56bb01de0e8b29de50000b19
# --- iteration 1 ---
Person = {
  "1stname" => "John",
  "second-name" => "Doe",
  "email@ddress" => "john.doe@email.com",
  "male.female" => "M"
}

# http://www.codewars.com/kata/55f91a98db47502cfc00001b
# --- iteration 1 ---
def wheres_wally(string)
  string =~ /(?<=\A|\s)Wally(?=\W|\z)/ || -1
end

# --- iteration 2 ---
def wheres_wally(str)
  str =~ /(?<=\A|\s)Wally(?=)/ || -1
end

# http://www.codewars.com/kata/550554fd08b86f84fe000a58/
# --- iteration 1 ---
def in_array(a1, a2)
  return [] if a1.empty?
  a1.select! do |a1_str|
    a2.any? { |a2_str| a2_str.include?(a1_str) }
  end.sort
end
# http://www.codewars.com/kata/564d398e2ecf66cec00000a9
# --- iteration 1 ---
def type_of_triangle(a, b, c)
  return "Not a valid triangle" unless [a, b, c].all? { |x| x.is_a? Integer }
  return "Not a valid triangle" unless (a + b) > c && (a + c) > b && (b + c) > a
  return "Equilateral" if a == b && b == c
  return "Isosceles" if [a, b, c].uniq.count == 2
  "Scalene"
end

# --- iteration 2 ---
def type_of_triangle(a, b, c)
  return "Not a valid triangle" unless [a, b, c].all?{ |x| x.is_a?(Integer) } 
  return "Not a valid triangle" unless (a + b) > c && (a + c) > b && (b + c) > a
  return "Equilateral" if a == b && b == c
  [a,b,c].uniq.count == 2 ? "Isosceles" : "Scalene"
end

# --- iteration 3 ---
def type_of_triangle(a, b, c)
  return "Not a valid triangle" unless [a,b,c].all?{|x| Integer === x}
  return "Not a valid triangle" unless (a+b)>c && (a+c)>b && (b+c)>a
  ["Equilateral", "Isosceles", "Scalene"][ [a,b,c].uniq.size-1 ]
end
# http://www.codewars.com/kata/528d36d7cc451cd7e4000339/
# --- iteration 1 ---
def most_money(students)
  return students.first.name if students.size == 1
  return "all" if students.map{ |st| st.total_money }.uniq.count == 1
  students.sort_by{ |st| st.total_money }.last.name
end

class Student
  def total_money
    5 * fives + 10 * tens + 20 * twenties
  end
end
# http://www.codewars.com/kata/5266876b8f4bf2da9b000362/
# --- iteration 1 ---
def likes(names)
  case names.size
  when 0 then "no one likes this"
  when 1 then "#{names.first} likes this"
  when 2 then "#{names.first} and #{names[1]} like this"
  when 3 then "#{names.first}, #{names[1]} and #{names[2]} like this"
  else "#{names.first}, #{names[1]} and #{names.size-2} others like this"
  end
end
# http://www.codewars.com/kata/55dc4520094bbaf50e0000cb
# --- iteration 1 ---
def am_I_Wilson(p)
  [5, 13, 563].include?(p)
end

# http://www.codewars.com/kata/5253d3a24f16f061cd000228
# --- iteration 1 ---
def compute
  block_given? ? yield : "Do not compute"
end

# http://www.codewars.com/kata/53ee5429ba190077850011d4
# --- iteration 1 ---
def doubleInteger(i)
  i*2
end

# http://www.codewars.com/kata/54c27a33fb7da0db0100040e
# --- iteration 1 ---
def is_square(x)
  return false if x < 0
  return true if x < 2
  (1..Math.sqrt(x)).each do |n|
    return true if n*n == x
  end
  false
end

# --- iteration 2 ---
def is_square(x)
  x < 0 ? false: Math.sqrt(x) % 1 == 0
end

# --- iteration 3 ---
def is_square(x)
  x >= 0 && Math.sqrt(x) % 1 == 0
end

# http://www.codewars.com/kata/570fd7ad34e6130455001835
# --- iteration 1 ---
def zebulansNightmare(func_name)
  func_name.split("_")
    .map.with_index{ |x, i| i == 0 ? x : x.capitalize }
    .join
end

# --- iteration 2 ---
def zebulansNightmare(str)
  str.gsub(/_./) { |m| m[1].upcase }
end

# http://www.codewars.com/kata/56aaf25213edd3a88a000002/
# --- iteration 1 ---
class Array
  def zip(arr, &block)
    slice(0...[size, arr.size].min).map.with_index do |el, i|
      block.(el, arr[i])
    end
  end
end

class Array
  def zip(arr, &block)
    (0...[size, arr.size].min).map do |i|
      yield(self[i], arr[i])
    end
  end
end
