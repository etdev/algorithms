package main

func moveZeroes(nums []int) {
	lastFoundNonZeroPtr := 0

	for i := 0; i < len(nums); i++ {
		if nums[i] != 0 {
			nums[lastFoundNonZeroPtr] = nums[i]
			lastFoundNonZeroPtr++
		}
	}

	for i := lastFoundNonZeroPtr; i < len(nums); i++ {
		nums[i] = 0
	}
}
