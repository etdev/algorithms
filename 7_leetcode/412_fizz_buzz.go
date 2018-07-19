package main

import "fmt"

func fizzBuzz(n int) []string {
	strings := []string{}

	for i := 1; i <= n; i++ {
		if i%15 == 0 {
			strings = append(strings, "FizzBuzz")
		} else if i%5 == 0 {
			strings = append(strings, "Buzz")
		} else if i%3 == 0 {
			strings = append(strings, "Fizz")
		} else {
			strings = append(strings, fmt.Sprintf("%d", i))
		}
	}

	return strings
}
