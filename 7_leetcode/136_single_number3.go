package main

func singleNumber(nums []int) int {
	// Math solution
	// 2 * (a + b + c) = (a + a + b + b + c + c)
	// 2 * (a + b + c) - c = a + a + b + b + c

	distinct_nums := map[int]bool{}
	total_count := 0
	missing_count := 0

	for _, num := range nums {
		distinct_nums[num] = true
		missing_count += num
	}

	for num := range distinct_nums {
		total_count += (2 * num)
	}

	return total_count - missing_count
}
