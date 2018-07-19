package main

func singleNumber(nums []int) int {
	m := map[int]bool{}

	for _, num := range nums {
		if m[num] {
			m[num] = false
		} else {
			m[num] = true
		}
	}

	for _, num := range nums {
		if m[num] {
			return num
		}
	}
	return 0
}
