Algorithms
==========

### Various algorithms implemented in Ruby and Java, from the following sources:

* [CodeWars](http://www.codewars.com/users/etdev) challenges - [View](https://github.com/etdev/algorithms/tree/master/0_code_wars)
* [Codility](https://codility.com) practice problems - [View](https://github.com/etdev/algorithms/tree/master/1_codility)
* [Cracking the Coding Interview](http://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/098478280X) - [View](https://github.com/etdev/algorithms/tree/master/2_cracking_the_coding_interview)
* [Algorithms](http://algs4.cs.princeton.edu/home/), Sedgewick + Wayne - [View](https://github.com/etdev/algorithms/tree/master/3_sedgewick)
* Custom algorithms - [View](https://github.com/etdev/algorithms/tree/master/4_custom)

### CodeWars Importer

To generate files like the ones in my `code_wars` section for your completed solutions:

**NOTE: This requires Ruby, and currently only works for Github OAuth login**

1. `git clone git@github.com:etdev/algorithms`
2. `cd algorithms/0_code_wars/0_importer`
3. `ruby import.rb`
4. Enter your github username, password, and 2FA code if applicable
5. Enter The max number of katas you want to store (they're sorted by recently submitted)

The files will be generated in the `output` directory in the following format:

![image](https://cloud.githubusercontent.com/assets/6726985/14759971/fbe4b6f2-0970-11e6-8bf9-dd6c13a53ca5.png)
