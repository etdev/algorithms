package main

func singleNumber(nums []int) int {
	count := 0

	for _, num := range nums {
		count ^= num
	}
	return count
}
