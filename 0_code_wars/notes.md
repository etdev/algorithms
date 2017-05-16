# Ruby code challenge notes

### Math

* Require the `prime` package when dealing with prime factorizations etc.
```ruby
require "prime"
Prime.prime_division(12)
# => [[2, 2], [3, 1]]
```
* Use the `lcm` function for getting least common multiple (e.g. 3.lcm(4), => 12)
* Use the `gcd` function for getting greatest common divisor (e.g. 2.gcd(8) => 2)
* Don't forget that one series everyone uses for some reason:

```ruby
(1..n).reduce(:+) == (n * (n + 1)) / 2
```

### Matrices

* Require `matrix` and use `Matrix.det` et al. for determinants, adding etc.
* Do `Matrix[*arr]` to create a matrix from a 2d array
