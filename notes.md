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
