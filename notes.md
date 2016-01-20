## Ruby methods
### Enumerable#chunk
```ruby
[1,3,5,2,4,6].chunk(&:even).to_a
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
num % 1 == 0
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

