## Ruby methods
### Enumerable#chunk
```ruby
[1,3,5,2,4,6].chunk(&:even?).to_a
# => [false, [1, 3, 5]], [true, [2, 4, 6]]]
```
Chunks consecutive values together based on a block.  Returns an Enumerator.

```ruby
people = [ { name: "Jon Snow", house: "Stark" },
  { name: "Arya Stark", house: "Stark" },
  { name: "Joffrey Baratheon", house: "Lannister" },
  { name: "Cersei Lannister", house: "Lannister" }
]

people_by_house_enum = people.chunk{ |person| person[:house] }
# => <Enumerator: #<Enumerator::Generator:0x007f9a5b887870>:each>

people_by_house_enum.next
# => ["Stark", [{:name=>"Jon Snow", :house=>"Stark"}, {:name=>"Arya Stark", :house=>"Stark"}]]

people_by_house_enum.next
# => ["Lannister", [{:name=>"Joffrey Baratheon", :house=>"Lannister"}, {:name=>"Cersei Lannister", :house=>"Lannister"}]]
```

### Enumerable#partition
Executes block on each element, returns [[block_was_true_elements], [block_was_not_true_elements]]
```ruby
[1, 2, 3, 4, 5, 6].partition(&:even?)
# => [[2, 4, 6], [1, 3, 5]]
```

## General

### Check if num is a whole number (i.e. no decimal component):
```ruby
num = 5
num % 1 == 0
# => true
num = 2.3
num % 1 == 0
# => false
```

### Only check up to sqrt(n) when searching for factors of n:
You have the number n, which is the product of two numbers:

`n = a*b`

`a` and `b` can't both be greater than sqrt(n)
  => one or more of them is smaller
    => you only need to check up to sqrt(n) (you can get b from a or vice versa)

See this in action in 0_codewars > 6_find_the_divisors.rb

### Use a.concat(b) instead of `a << b; a.flatten`

### Finding the sum of 1 + 2 + 3 ... + n
It's just `(n*(n+1))/2`
```ruby
n = 10

(n*(n*1))/2
# => 55

(1..n).reduce(&:+) == (n*(n+1))/2
# => true
```

### You can't use `each_with_object` with immutable objects like Fixnums
I expected this to sum the multiples of 3 and 5 up to n:
```ruby
def solution(n)
  (1...n).each_with_object(0) do |el, m|
    (el % 3 == 0 || el % 5 == 0) ? m + el : m
  end
end

solution(10)
# => 0
```
That `0` never gets updated since it's immutable.

### Negative numbers can't be prime, because `-1` isn't 1 or itself.

### String#`delete` instead of `gsub` for stripping certain characters
Instead of this:
```ruby
str = "ab123cd"
str.gsub(/[^a-zA-Z]/, "")
```

do this:
```ruby
str = "ab123cd"
str.delete("^a-zA-Z")
# => "abcd"
```
### Remember to use `grep`
e.g you want to find all words in an array starting with some string:
```ruby
input = "start_str"
dictionary = ["start_strA", "non_start_strA", "start_strB"]
dictionary.grep(/\A#{input}/i)
# => ["start_strA", "start_strB"
```

### `first` works with lazy, but `take` doesn't
Also just remember to use `lazy` in general

### String#`split` splits on 1 or more spaces by default
```ruby
"abc   def    ".split
# => ["abc", "def"]
"abc   def    ".split(" ")
# => ["abc", "def"]
```
This destroys the knowledge that there was more than one space at those points.

```ruby
"abc   def    ".split(/\s/)
# =>"abc", "", "", "def"]
```

### Use `x.fdiv(y)` instead of `x.to_f / y`

### `[nil, false].any?` gives `false`
I use `.any?` to check whether an array is empty or not sometimes, but maybe
I shouldn't be. `empty?` is still `false`

### You don't need the `call` with lambdas / procs
```ruby
add = ->(a, b) { a + b }
add.call(1, 2)
# => 3
add.(1, 2)
# => 3
# works for Procs too
```

### `|`, `&` for arrays and sets
Use `|` and `&` to get the union and intersection of two arrays (or sets), respectively.
```ruby
# good
[1, 2, 3] | [2, 3, 4]
# => [1, 2, 3, 4]
[1, 2, 3] & [2, 3, 4]
# => [2, 3]
[1, 2, 3] - [2, 3, 4]
# => [1]
```

### (1..100) vs 1.upto(100)
I'm not sure which I prefer; `upto` is arguably more descriptive, and `1..100`
requires parentheses, but `1..100` is shorter.

### my_proc.call(1, 2) vs. my_proc.(1, 2)
Not sure which is better stylistically but they do both work
```ruby
my_proc = proc { |a, b| a + b }
my_proc.call(1, 2)
# => 3
my_proc.(1, 2)
# => 3
```
```ruby
my_proc = proc { |*args| 5 + (args.reduce(&:+) || 0) }
my_proc.call(1, 2, 3)
# => 11
my_proc.(1, 2, 3)
# => 11
my_proc.call
# => 5
my_proc.()
# => 5
```

### Use Hash#to_proc in Ruby 2.3

### Use `grep` to filter array elements by type
```ruby
items = [1, 1.0, '1', nil]
nums = items.grep(Numeric)
# => [1, 1.0]
```

### Use `take_while` to get values of an array until a condition becomes untrue
```ruby
[1, 2, 3, 4, 5, 6].take_while{ |x| x < 4 }
# => [1, 2, 3]
```

### `a === b` asks "If there's a drawer labeled a, does it make sense to put b in it?"
```ruby
num = 5.0
Numeric === num
# => true
Integer === num
# => false

str = "abc"
Module === String
# => true
Module === str
# => false
String === str
# => true

/\d/ === "5"
# => true
/\d/ === "a"
# => false
```

### User `delete_at` or `slice` to delete only the first instance of an element from an array
```ruby
nums = [1, 2, 3, 1, 2, 3]

# bad
nums.delete(2)
nums
# => [1, 3, 1, 3]

# good
nums.delete_at(arr.index(2))
nums
# => [1, 3, 1, 2, 3]

# also good
nums.slice!(arr.idx(2))
nums
# => [1, 3, 1, 2, 3]

# guard against errors
li.delete_at(li.index(n) || li.length)
```

### Use `to_s(n)` to get a number in base `n`

### The craziness of Ruby's `String#tr`
`String#tr` is surprisingly powerful in Ruby.
```ruby
str = "the quick brown fox jumped over the lazy dog"
str.tr("eol", "301")
```

### Ruby's `String#count` method requires an argument
```ruby
str = "hello world"
str.count
# => error
str.count("aeiou")
# => 3
str.count("he^l")
# => 5
```

### `String#scan` to get the instances of a regex match
```ruby
str = "hello world"
str.scan(/[aeiou]/)
# => ["e", "o", "o"]

str = "HellO wOrld"
str.scan(/[aeiou]/i).size
# => 3
```

### The `minmax` function exists (for some reason)
```ruby
[5, 1, 4, 3].minmax
# => [1, 5]
```

### Use the `Math.hypot` function to get the hypotenuse of a triangle
```ruby
Math.hypot(3, 4)
# => 5.0
```

### The `method` method
```ruby
def add(a, b)
  a + b
end
method(:add).(2, 3)
# => 5
```
Basically you can use this in place of `send` when you don't have a specific object
in your domain that you want to send the method to.  It allows you to dynamically
specify a method and pass it around as a closure (Method object)

### The Ruby `raise` method
* You can run `raise` with just a string; this will raise a `RuntimeError`:
```ruby
raise "Something's gone wrong."
# => RuntimeError: Something's gone wrong.
```
* You can also specify the error type and/or add a message as the second arg:
```ruby
raise ArgumentError
# => ArgumentError: ArgumentError

raise ArgumentError, "Invalid arguments"
# => ArgumentError: Invalid arguments
```

There's another optional third parameter, which is used to give information
about the caller etc.

### Ruby `rand` function
The `rand` function generates a decimal from (0.0, 1.0), never actually
hitting either of those values.  So if you have a probability value for
something, like p = 0.5, you can compare it directly against the
output of `rand`.

### String#`to_i` will stop checking after the chars stop being convertible to ints
```ruby
"5 monkeys 12".to_i
# => 5
"monkeys 12".to_i
# => 0
```

### Regex lookahead, lookbehind
```ruby
"abc".sub(/ab(?=c)/, "AB")
# => "ABc"

"abc".sub(/(?<=ab)c/, "C")
# => "abC"
```

```ruby
"abc".sub(/(?<!ab)c/, "C")
# => "abc"

"xxc".sub(/(?<!ab)c/, "C")
# => "xxC"


"abc".sub(/ab(?!c)/, "AB")
# => "abc"

"abx".sub(/ab(?!c)/, "AB")
# => "ABx"
```

### String#`to_i` can also take an argument for the base
```ruby
"10".to_i(2)
# => 2

2.to_s(2)
# => "10"
```

### Regex brace-group laziness
```ruby
"12345".scan(/(\d{1,3})/)
# => [["123"], ["45"]]
```

### Check if `n` is a power of 2 using bit operations:
```ruby
def is_pow_of_two?(n)
  n & n - 1 == 0
end
is_pow_of_two?(2)
# => 10 & 01 => 00 => true
is_pow_of_two?(3)
# => 11 & 10 => 10 => false
```

This fails for 0 though, so you can check to see if n is zero first if you care.

```ruby
n == 2 ? false : n & n - 1 == 0
```

### Get the unique elements of an array
```ruby
arr = [1, 2, 2, 2, 3, 3, 4, 5]
arr & arr
# => [1, 2, 3, 4, 5]
```

For the union of elements in two arrays:
```ruby
[1, 2, 3, 4] | [3, 4, 5, 6]
# => [1, 2, 3, 4, 5, 6]
```

### `sprintf`
`%[flags][width][.precision]type`
```ruby
# floats/ints
"%.0f" % 456
# => "456"
"%.2f" % 456
# => "456.00"

"%20d" % 456
# => "                 456"
"%020d" % 456
# => "00000000000000000456"
"%020.2f" % 456
# => "00000000000000456.00"

# to binary
"%b" % 456
# => "111001000"
"%#b" % 456
# => "0b111001000"

# to hexadecimal
"%2x" % 255
# => "ff"
"%2x-%2x-%2x" % [255, 254, 253]
# => "ff-fe-fd"
"%x%X" % [255, 254, 253]
# => "ffFE"
"%10x%5X" % [255, 254, 253]
# => "        ff   FE"

# Kernel.format does the same thing:
format("%+10X", -255, 254)
# => "       -FF"
```
Using Kernel#`format` or Kernel#`sprintf` allows for an arbitrary number of args,
whereas `%` takes an array.  They all ignore extra values though.

### `Matrix` - Finding the sum of the main diagonal of a square matrix
```ruby
require "matrix"
arr_of_arrs = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
Matrix[*arr_of_arrs].trace
# => 15

# another good way without using matrix lib:
matrix.map.with_index { |a, i| a[i] }.reduce(:+)
```

### Permutations and Combinations
Get list of permutations/combinations
```ruby
# permutations
[1, 2, 3].permutation(2).to_a
# => [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]

# combinations
[1, 2, 3].combination(2).to_a
# => [[1, 2], [1, 3], [2, 3]]
```

Count pairs of combinations
```ruby
def count_combination_pairs(n)
  # when working with large numbers, it's inefficient or impossible to
  # instantiate large lists of permutations; instead you can use the fact that
  # k_tuples_combination_ count = (n!) / (((n-k)!)*k!)
  # if k is 2, you get n! / ( 2(n-2)! )
  # = (n)(n-1)(n-2)(n-3)...(1) / (((n-2)(n-3)...(1))*2)
  # = (n)(n-1) / 2
  # Basically the first k elements of the factorial divided by k.
  (n * n - n) / 2
end
```

This can be generalized to work for other tuples:

```ruby
def count_combination_k_tuples(n, k)
  n.downto(1).lazy.first(k).reduce(:*) / (1..k).reduce(:*)
end
```

### Array union, intersection, exclusion
```ruby
a = [1, 2, 3, 4]
b = [2, 4, 6]

# exclusion - get the characters in a but not b
a - b
# => [1, 3]

# union - merge them so any element in either one is in the result (once)
a | b
# => [1, 2, 3, 4, 6]

# intersection - Get only the characters in both a and b
a & b
# => [2, 4]
```

### Cut off all but first 2 decimal points, without rounding
```ruby
x = 123.45678
(x * 100).to_i / 100.0
# => 123.45
```

You need both the `.to_i` (or `.truncate`) and for the divisor 100 to be
a float.  Or you could use `fdiv`.

### The `!~` operator
```ruby
"123" =~ /\d/
# => 0

"123" !~ /\d/
# => false
```

### Percent operators
`%w` creates an array of values as single-quote strings.
`%W` does the same but the same but double-quote strings (e.g interpolation works)
```ruby
my_str = "hello"
%w(foo bar baz #{my_str})
# => ['foo', 'bar', 'baz', '\#{my_str}']
%W(foo bar baz #{my_str})
# => ["foo", "bar", "baz", "hello"]
```

### Use X instead of Y:
* `reverse_each` instead of `.reverse.each`
* `flat_map`     instead of `.flatten.map`
* `each_key`     instead of `.keys.each`
* `each_value`   instead of `.values.each`
* `select`       instead of `find_all`
* `reduce`       instead of `inject`
* `size`         instead of `length`
* `each_index`   instead of `each_with_index` and then only using the index

### String#`tr_s` strips the overlapping characters.
```ruby
"abc".tr("ab", "a")
# => "aac"

"abc".tr_s("ab", "a")
# => "ac"
```

### Hash#`fetch` works with negative indices, and allows default values.
```ruby
["a", "b", "c"].fetch(-3)
# => "a"

["a", "b", "c"].fetch(-4, 5_000)
# => 5000
```

### Array conditional creation before use
```ruby
(x ||= []).include?(5)
```

Useful to make code more concise

### Use Enumerable#`rotate` when rotating arrays
```ruby
[1, 2, 3, 4].rotate(1)
# => [2, 3, 4, 1]
[1, 2, 3, 4].rotate(2)
# => [3, 4, 1, 2]
[1, 2, 3, 4].rotate(400)
# => [1, 2, 3, 4]
```

### Use `step(by: x)` for lazy stepping when you know how many elements instead of the max element
```ruby
5.step(by: 3).first(4)
# => [5, 8, 11, 14]
```

### Regex lookahead, lookbehind

I feel like this is the second entry for this topic, but I still haven't
committed it to memory so I'm going to go through it again.

```ruby
# positive lookbehind => (?<=)
# negative lookbehind => (?<!)

# positive lookahead => (?=)
# negative lookahead => (?!)
```

```ruby
# positive lookbehind
str = "abc"

/(?<=ab)c/ === str
# => true
/(?<=xx)c/ === str
# => false
```

```ruby
# negative lookbehind
str = "abc"

/(?<!xx)c/ === str
# => true
/(?<!ab)c/ === str
# => false
```

```ruby
# positive lookahead
/ab(?=c)/ === str
# => true
/ab(?=x)/ === str
# => false
```

```ruby
# negative lookahead
/ab(?!c)/ === str
# => false
/ab(?!x)/ === str
# => true
```

Lookahead is just `?` plus either `=` for positive or `!` for negative.
Lookbehind is the same but has `<` between them.

# Clever way to concatenate 2 chars and an incrementing number
```ruby
def char_concat(word)
  (1..word.length/2).map {|i| word[i - 1] + word[-i] + i.to_s}.join
end
```

I would have never thought to do this, but it's a good way of doing it.

# Ways to convert a character like "A" to an int representation
```ruby
"ABC".codepoints
# => [65, 66, 67]

"ABC".codepoints.map{ |cp| cp - 64 }
# => [1, 2, 3] (for 1-26 rep.)

"ABC".bytes
# => [65, 66, 67]

"ABC".chars.map(&:ord)
# => [65, 66, 67]
```

### `sort_by` on a hash
I foolishly kind of expected this to work:
```ruby
hsh_arr.sort_by{ |x| x.first == 5 }
# => ArgumentError: comparison of TrueClass with false failed
```

But true and false don't have real "order" i.e. `true` isn't greater than `false`.

You can do something like this though:
```ruby
hsh_arr.sort_by{ |x| x.first == 5 ? 0 : 1 }
```

### Use Enumerable#`grep` to check which strings in a list match some regex
I thought to use this:
```ruby
str_arr = ["home", "yolo"]
query = "me"
str_arr.map{ |str| str if /#{query}/i === str }.compact
# => ["home"]
```

But I could've just used this:
```ruby
str_arr.grep(/#{query}/i)
# => ["home"]
```

Usually if you're running `compact` et al. on a result to get rid of unwanted elements,
there's a better way.

### To filter a collection by a function/proc/etc that returns true or false, use `select`
```ruby
# bad
arr.map{ |x| func.call(x) ? x : nil }.compact

# good
arr.select{ |x| func.call(x) }
```

`func` returns either `true` or `false`.

### Avoid converting a number to a string, editing it, and converting back when possible
For example, to check whether an integer n has 2 or fewer digits, you should do this:
```ruby
n < 100
```

Not this:

```ruby
n.to_s.size <= 2
```

### Use the `divmod` method when you want both the floored result and the remainder
of a division

```ruby
5.divmod(2)
# => [2, 1]
30.divmod(5)
# => [6, 0]
8.divmod(3)
# => [2, 2)
```

### Clever way to get the next multiple of a number `m`, above a starting number `n`
I originally did something like this:
```ruby
def next_multiple_of_5(n)
  n += 1 until n % 5 == 0
  n
end

next_multiple_of_5(3)
# => 5
```

You could also do this though:
```ruby
def next_multiple_of_5(n)
  n % 5 == 0 ? n : (n/5 + 1) * 5
end

next_multiple_of_5(3)
# => 5
```

You basically get the number after the result of (n / 5).floor.

Yet another way is to do `n.fdiv(m).ceil * n`, which removes the need for
the conditional.

### Use `max_by` instead of `sort_by` followed by `.max`
```ruby
# I did this:
students.sort_by{ |st| st.total_money }.max.name

# I should have done this:
students.max_by(&:total_money).name
```

### `Hash#merge` with a block
Supplying a block to `Hash#merge` allows you to define how to merge the values.

```ruby
hsh_one = { a: 1, b: 2, c: 3 }
hsh_two = { a: 4, b: 5 }
hsh_one.merge(hsh_two) do |_key, old_val, new_val|
  old_val.to_i + new_val
end

# => {:a=>5, :b=>7, :c=>3}
```

### Array#`uniq` takes a block:

Useful when you have an array of hashes and want to get the unique vals by some
key in the hash

```ruby
hsh_arr = [ { a: 1, b: 2 }, { a: 1, b: 3 }, { a: 2, b: 4 } ]
hsh_arr.uniq { |hsh| hsh[:a] }
# => [ { a: 1, b: 2}, { a: 2, b: 4 } ]
```

### In `gsub` etc, `\0` returns the whole match
```ruby
str = "abc"
str.gsub(/./, '\0\0')
# => "aabbcc"
```

Remember to use single quotes when using `\0`, `\1` etc.

### Negative `step`
You can't have decreasing ranges in Ruby, but you can use the `step` method
on `Numeric` to effectively iterate from a higher to lower value.

```ruby
10.step(1, -2).to_a
# => 10, 8, 6, 4, 2
```

### Hash#`invert`
When you want to switch a hash's keys and values

```ruby
hsh = { a: "123", b: "456" }
hsh.invert
# => { "123" => :a, "456" => :b }
```

### Chunk array by consecutive values (Array#`chunk`)
```ruby
# ruby <= 2.1
[1, 2, 2, 3, 4, 4].chunk{ |num| num }.to_a
# or ruby 2.2
[1, 2, 2, 3, 4, 4].chunk(&:itself).to_a

# => [[1, [1]], [2, [2, 2]], [3, [3]], [4, [4, 4]]]
```

### Enumerable#`max_by`
Use this when you want to get the maximum of an object by e.g. some key, or
some attribute of that object:
```ruby
# get longest string made up of k-length consecutive strings in str_arr:
str_arr = ["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"]
k = 2
str_arr.each_cons(k).map(&:join).max_by(&:length)
# => "abigailtheta"
```
Note that this will return the FIRST object to have that max.

### Use an array as a stack
When facing problems where you need to e.g.
  * Check if the last item in some data structure has some relationship with another item and e.g. remove it if so
  * Keep track of opening and closing paentheses
  * etc.

It might be a good idea to use a `stack`.  This kata is a really good example of
when stacks can come in handy: 

[Directions Reduction](http://www.codewars.com/kata/550f22f4d758534c1100025a/solutions/ruby)

You can simply use an `Array` and then `pop` and `push` items onto/off of it.

### Iteratively applying a simple operation to simplify something complicated
For problems like [Double Cola](http://www.codewars.com/kata/551dd1f424b7a4cdae0001f0/solutions/ruby/),
it's confusing at first because you have a complicated relationship, but if you think about
what you can do to simplify it little by little, e.g.

```ruby
  r - names.length
  r / 2
```

and then it becomes quite simple.

### `join` flattens multi-dimensional arrays

If you have:
```ruby
nested_chars = [["a", "b", "c"], ["d", ["e"], "f"]]
nested_chars.join
# => "abcdef"
```

It will join across nested arrays without having to flatten them.

### Fixnum#`bit_length`

You can use this to get the number of bits in the binary representation of a number.

```ruby
# bad
5.to_s(2).length
# => 3

# good
5.bit_length
# => 3
```

### Fixnum#`^`

Bitwise XOR operator
```ruby
x = 5
x.to_s(2)
# => 101

(x ^ 0b100).to_s(2)
# => 1
```

### Fixnum#`<<` and Fixnum#`>>`

These are the bitwise shift left and shift right operators, respectively

```ruby
x = 5
x.to_s(2)
# => 101
x << 1
# => 10

x >> 1
# => 2
```

x << n is basically equivalent to multiplying x by 2 n times.
x >> n is basically equivalent to dividing x by 2 n times (integer division).

### Finding factors of a number

You only have to loop up to `Math.sqrt(n)` when checking values, since if `i`
was greater than `Math.sqrt(n)`, n / i would be less than `Math.sqrt(n)`, which
means you would have already checked that number (I'm assuming you add the
numbers in pairs, i and n/i).

The way you check for primes is similar, but instead of keeping track of the factors
you just check if there are any besides 1 or not.

### Date class

Checking if a given year is a leap year
```ruby
require "date"

# via leap? class method
Date.leap?(1900)
# => false
Date.leap?(1904)
# => true

# via instance method on a Date object
date = Date.new(2016, 12, 03)
date.leap?
# => true
```

Getting the number of a given day in a year
```ruby
date = Date.new(2016, 12, 03)
date.yday
# => 338
```

### Set#`subset?` and Set#`superset?`

```ruby
set1 = Set.new([1, 2, 3, 4])
set2 = Set.new([2, 3])

# check if set1 is a subset of set2 (not the other way around)
set1.subset?(set2)
# false
set2.subset?(set1)
# true

# check if set1 is a superset of set2
set1.superset?(set2)
# true
set2.superset?(set1)
# false
```

### String#`sum`

You can add up the ordinal value of the characters in strings like so

```ruby
"abc".sum
# => 294
```

# Rails notes
When to add an index
* Add one when the column will appear in `WHERE` and `ORDER BY` (sorting) expressions a lot
* Don't add one when the values in the column change a lot, because having an index
SLOWS DOWN INSERTS AND UPDATES

Add if:
* Employee table, users search for employees by name (so they don't have to
remember an ID)
```sql
SELECT * FROM employees WHERE name = 'smith';
```
But you wouldn't expect to be changing employees' names frequently, so the
inserts and updates being slowed down doesn't really matter.

* Indexes are also only useful for tables with many rows; if it's a really small
table there's no point, and it could actually be a net detriment.
* If a column is a variable length, indexes perform much less efficiently.

### ActiveRecord methods I don't use enough

# Golang notes

* Install remote package: `go get github.com/username/repo`
* Update remote package + install dependencies: `go get -u ...`

`go get` basically clones the source code to the `$GOPATH/src` path and then 
exeecutes `go install`.

### Functions
This:

```go
func add(x int, y int) int {
  return x + y
}
```

is the same as this:
```go
func add(x, y int) int {
  return x + y
}
```

```go
package main

import(
  "fmt"
)

func add(x int, y int) int {
  return x + y
}

func main() {
  fmt.Println(add(42, 13))
}
```

* Functions can return any number of results.

```go
func swap(x, y string) (string, string) {
  return y, x
}

func main() {
  a, b := swap("hello", "world")
  fmt.Println(a, b)
}
```

```go
a, b := "world", "hello"
fmt.Println(str_a, str_b)
// => world hello
```

This will print str_a + " " + str_b

* The `var` statement declares a list of variables; it can be package or
function level.

* `var` declarations can include initializers, one per variable:

```go
var i, j int = 1, 2
var c, python, java = true, false, "no!"
fmt.Println(i, j, c, python, java)
// => 1 2 true false no!
```

* The `:=` short assignment statement is used in place of a `var` declaration
with implicit type.
  * This is ONLY AVAILABLE WITHIN FUNCTIONS.  Outside a function, every statement
    begins with a keyword like `var`, `func` etc.

Types:

* bool
* string
* int, int8, int16, int32, int64
* uint, uint8, uint16, uint32, uint64, uintptr
* byte (alias for uint8)
* rune (alias for int32) (represents a Unicode code point)
* float32, float64
* complex64, complex128

`int`, `uint`, and `uintptr` are usually 32 bits wide on 32-bit systems, and
64 bits wide on 64-bit systems.

Default values:

* numeric => 0
* boolean => false
* string => ""

You need to cast variables e.g.
```go
  var i int = 42
  // (aka i := 42)
  var f float64 = i
  // ERROR: cannot use (type int) as type float64
  var f float64 = float64(i)
  // OK
```

Constants

* Declared with the `const` keyword
* Can be character, string, boolean, or numeric vals
* Start with uppercase value

* `for` is the only looping construct
```go
package main

import "fmt"

func main() {
  sum := 0
  for i := 0; i < 10; i++ {
    sum += 1
  }
  fmt.Println(sum)
}

// => 45
```

* No parentheses around condition
* Braces are necessary though
* The init and post statement are optional

```go
func main() {
  sum := 1
  for ; sum < 1000; {
    sum += sum
  }
  fmt.Println(sum)
}

// => 1024
```

You can also just drop the semicolons then, so
```
  for sum < 1000 {
    sum += sum
  }
```

It's identical to C's `while` loop, but with for instead of while

Infinite loop:
```
  for {
  }
```

### If statements

* Like for loops, they require no parentheses around the condition but do need
the brackets around the body
* They can contain a short statement to execute before the condition

```go
func pow(x, n, lim float64) float64 {
  if v := math.Pow(x, n); v < lim {
    return v
  }
  return lim
}
```

The v variable is scoped to the body of the if statement.  Although if you declare
it in an if, it's also available in an else connected to that if.

### Switch cases
```go
switch os := runtime.GOOS; os {
  case "darwin":
    fmt.Println("OS X.")
  case "linux":
    fmt.Println("Linux.")
  default:
    fmt.Printf("%s.", os)
}
```

Breaks automatically unless it ends with a `fallthrough` statement.

### Defer
Defers the execution of a function until the surrounding function returns.

```
func main() {
  defer fmt.Println("world")
  fmt.Println("hello")
}
```

The deferred call's args are evaluated immediately, but the function call is not
executed until the surrounding function returns.

* Deferred functions calls are pushed onto a stack.  A given function's
deferred calls are executed in a last-in-first-out order.

### Pointers

* Pointers hold the memory address of a variable.
* The type `*T` is a pointer to a `T` value.  Its zero value is `nil`.

```go
var p *int
```

`*int` is a pointer to an `int` value.  Its zero value is `nil`.  So `p` is
a pointer to an int.

* The `&` operator generates a pointer to its operand.

```go
i := 42
p = &i
```

The `*` operator denotes the pointer's underlying value.

```go
fmt.Println(*p) // read i through the pointer p
*p = 21         // seti through the pointer p
```

This is known as `dereferencing` or `indirecting`.

So `&` is basically `get_address_of(val)`
`*` is get_var_thru_pointer(pointer) // `*p = 21`
OR
`pointer_of_type(type)` // `var p *int`

### Structs

* Simply a collection of fields
```go
package main

import "fmt"

type Vertex struct {
  X int
  Y int
}

func main() {
  fmt.Println(Vertex{1, 2})
}
```

You can access fields of a struct directly through a pointer to that struct, e.g.

```go
v := Vertex{1, 2}
p := &v
p.X = 1e9
fmt.Println(v)
// {1000000000 2}
```

The special prefix `&` returns a pointer to the struct value
```go
v1 = Vertex{1, 2} // Vertex
v2 = Vertex{X: 1} // Y: 0 is implicit
v3 = Vertex{} // X: 0, Y: 0
p = &Vertex{1, 2} // has type *Vertex
```

### Arrays

`[n]T` is an array of `n` values of type `T`.
* `[5]int` is an array of 5 ints.
* `[50]string` is an array of 50 strings.

`var a [10]int` declares a variable `a` as an array of ten integers.

* Arrays can't be resized.

### Slices

A `slice` is a dynamically-sized, flexible view into the elements of an array.
In practice, slices are much more common than arrays.

The type `[]T` is a slice with elements of type `T`.

To create a slice of the first five elements of the array `a`:

`a[0:5]

```go
func main() {
  primes := [6]int{2, 3, 5, 7, 11, 13}
  var s []int = primes[1:4]

}
```

Slices are like references to arrays.  They don't store any data; they just
describe a section of an underlying array.

* Changing the elements of a slice modifies the corresponding elements of its
underlying array.
* Other slices that share the same underlying array will see those changes.

Slice Literals

This is an array literal:
`[3]bool{true, true, false}

And this creates the same array as above, then builds a slice that references it:

`[]bool{true, true, false}`

Slice Defaults

* The default is zero for the low bound and the length of the slice for
the high bount.

```go
var a [10]int

a[0:10]
a[:10]
a[0:]
a[:]
// all equivalent
```

* The `length` of a slice is the number of elements it contains.
* The `capacity` of a slice is the number of elements in the underlying array,
counting from the first element in the slice.
* The length of a slice `s` is `len(s)`.  The capacity of a slice `s` is `cap(s)`.

You can extend a slice's length by re-slicing it, if it has enough capacity.

* The zero value of a slice is `nil`.  A `nil` slice has a length and capacity
of `0` and no underlying array.

Dynamic arrays and `make`

* The built-in `make` function is how you create `dynamically-sized arrays.`

```go
a := make([]int, 5) // len(a) = 5
b := make([]int, 0, 5) // len(b) = 0, cap(b) = 5

b = b[:cap(b)] // len(b) = 5, cap(b) = 5
b = b[1:]     // len(b) = 4, cap(b) = 4
```

* You can have slices of slices.

Appending to a slice

Use the built-in `append` function to append to a slice.

```go
var s []int
printSlice(s)
// []

s = append(s, 0)
printSlice(s)
// [0]
```

### Range

The `range` form of the `for loop` iterates over a slice or map.

When ranging over a slice, two values are returned for each iteration;
the first is the index, and the second is a copy of the element at that index.

```go
var pow = []int{1, 2, 4, 8, 16, 32, 64, 128}

func main() {
  for i, v := range pow {
    fmt.Printf("2**%d = %d\n", i, v)
  }
}
```

* Skip the index by assigning to `_`

```go
for _, value := range pow {
  fmt.Printf("%d\n", value)
}
```

* Just drop the `, value` if you only need the index

### Maps
The zero value of a map is `nil`.

* The `make` function returns a map of the given type, initialized and ready to
use:

```go
var m map[string]Vertex
m = make(map[string]Vertex)
m["Bell Labs"] = Vertex{
  40.68433, -74.39967,
}
fmt.Println(m["Bell Labs"])
// {40.68433 -74.39967}
```

Map Literals

```go
type Vertex struct {
  Lat, Long float64
}

var m = map[string]Vertex{
  "Bell Labs": Vertex{
    40.68433, -74.39967,
  },
  "Google": Vertex{
    37.42202, -122.08408,
  },
}

func main() {
  fmt.Println(m)
}
```

* If the top-level type is just a type name, you can omit it from the elements
of the literal:

```go
type Vertex struct {
  Lat, Long float64
}

var m = map[string]Vertex{
  "Bell Labs": {40.68433, -74.39967},
  "Google": {37.42202, -122.08408},
}

func main() {
  fmt.Println(m)
}
```

* If `m` is a map, you delete an element with:

```go
delete(m, key)
```

* Test that a key is present with a two-value assignment:

```go
elem, ok = m[key]
```

If `key` is in `m`, ok is `true`.  If not, `ok` is `false`.

### Methods

* Go doesn't have classes, but you can define `method`s on `type`s.

```go
package main

import (
  "fmt"
  "math"
)

type Vertex struct {
  X, Y float64
}

func (v Vertex) Abs() float64 {
  return math.Sqrt(v.X*v.X + v.Y*v.Y)
}
```

A `method` is a function with a special `receiver` argument.

* The receiver appears in its own argument list between the `func` keyword and
the method name.

You can define methods on non-struct types too.  For example,

```go
type MyFloat float64

func (f MyFloat) Abs() flat64 {
  if f < 0 {
    return float64(-f)
  }
  return float64(f)
}

func main() {
  f := MyFloat(-math.Sqrt2)
  fmt.Println(f.Abs())
}
```

Methods with pointer receivers

* This means the receiver type has the literal syntax `*T` for some type `T`.
* T cannot itself be a pointer such as `*int`.
* Methods with pointer receivers can modify the value to which the receiver
points, so pointer receivers are more common than value receivers.

Reasons to use a pointer receiver:
1. So the method can modify the value that its receiver points to
2. To avoid copying the value on each method call.  This can be more efficient
if the receiver is a large struct, for example.

* Usually all methods on a given type should have either value or pointer
receivers, but not a mixture of both.

### Interfaces

* No `implements` keyword; interfaces are implemented implicitly by having
the methods with the correct signatures.



# SQL notes
Aggregate Functions
* MIN
```ruby
SELECT MIN(salary) FROM employee;
# => gives the value of the lowest salary for any employee
# => 19,996
```
* MAX
```ruby
SELECT MAX(salary) FROM employee;
# => same, but the highest salary instead of lowest
# => 165,244
```

* SUM
```ruby
SELECT SUM(salary) FROM employee;
# => Adds up the salaries for all employees and returns the result
# => 12,445,442
```

* AVG
```ruby
SELECT AVG(salary) FROM employee;
# => Gives the average of all employees' salaries
# => 67,462
```

* COUNT
```ruby
SELECT COUNT(salary) FROM employee;
# => Counts the non-null entries in a given column
# => 200
UPDATE employee SET salary = NULL WHERE id = 5;
SELECT COUNT(salary) FROM employee;
# => 199
```

* COUNT(\*)
```ruby
SELECT COUNT(*) FROM employee;
# => Counts the total number of rows in the table
# => 200
```

Aggregate functions always return a single value, calculated from the values
in a column.

# Redux Notes
* The entire state of your app is stored in an object tree inside a single *store*.
* The only way to change the state tree is to emit an *action*, which is an object
that describes what happened.
* To specify how the actions transform the state tre,, you write pure *reducers*.

### Example Reducer
It's a pure function with `(state, action) => state` signature.
It describes how an action transforms the state into the next state.

```js
import { createStore } from "redux"

function counter(state = 0, action) {
  switch (action.type) {
    case "INCREMENT":
      return state + 1
    case "DECREMENT":
      return state - 1
    default:
      return state
  }
}
```

I guess you should always have a `default` option that returns the state unchanged.
Also it's important that you never mutate the state; you return a new instance.

### Example Redux Store
Holds the state of your app.  Its API is `{ subscribe, dispatch, getState }`.

```js
import { createStore } from "redux"

let store = createStore(counter)
```

You can subscribe to the updates manually, or use bindings to your view layer.

```js
store.subscribe(() =>
  console.log(store.getState())
)
```

The only way to mutate the internal state is to dispatch an action.

```js
store.dispatch({ type: "INCREMENT" })
// 1
store.dispatch({ type: "INCREMENT" })
// 2
store.dispatch({ type: "DECREMENT" })
// 1
store.dispatch({ type: "YOLO" })
// 1
```

Instead of mutating the state directly, you:
* Specify the mutations you want to happen with plain objects called `actions`.
* Write a special function called a `reducer` to map actions to ways of changing
the application's state.

Gotchas coming from Flux:
* There is no dispatcher or multiple stores.  There is just a *single store with a single root reducing function*.

### Single source of truth
The entire state of your application is stored in an object tree with a single store.

```js
console.log(store.getState())
/* { counter: 2 } */
```

State is read-only.  The only way to mutate the state is to emit an `action`.,
an `object describing what happened`.

Actions are just plain objects; they can be logged, serialized, stored, and
replayed for debugging/testing purposes.

```js
store.dispatch({
  type: "COMPLETE_TODO",
  index: 1
})
```

To specify how the state tree is transformed by actions, you write pure `reducers`.

These are just pure functions that take the previous state and an action, and return
the next state.  That's it.  Always return a new state object, instead of mutating
the previous state.

### File structure
If you have an `index.js` file that requires react, redux etc. and you also have
a file `reducers/index.js` that defines a function:
```js
export default function counter(state = 0, action) {
  switch (action.type) {
    case "INCREMENT":
      return state + 1
    case "DECREMENT":
      return state - 1
    default:
      return state
  }
}
```

# Things I want to study more
### Ruby
* ARGF
* `autoload`
* Threads
* Fibers
* The Date, Time etc. classes
* THe Directory, File classes
* The dollar-sign regex matchers, other global state vars, constants etc.
* instance_eval, scope gates, module_eval

### Rails
* ActiveRecord query methods
* `has_many through` form helpers.  Like `collection_check_boxes` etc.
* Nested routes, shallow etc.
* `inverse_of`

### SQL
* HAVING
* When to use the different joins
* EXTRACT
