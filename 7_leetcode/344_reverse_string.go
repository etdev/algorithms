package main

func reverseString(s string) string {
	chars := []rune(s)

	l := len(chars)
	for i := 0; i < len(chars)/2; i++ {
		chars[i], chars[l-1-i] = chars[l-1-i], chars[i]
	}

	return string(chars)
}
