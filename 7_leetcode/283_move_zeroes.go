package main

func moveZeroes(nums []int) {
	max := len(nums)
	i := 0
	for i < max {
		if nums[i] == 0 {
			n := nums[i]
			nums = append(nums[:i], nums[i+1:]...)
			nums = append(nums, n)
			max--
		} else {
			i++
		}
	}
}
