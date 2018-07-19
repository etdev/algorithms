package main

func twoSum(nums []int, target int) []int {
	// hash_set solution
	seen := map[int]int{}

	for idx1, num := range nums {
		if idx2, ok := seen[target-num]; ok {
			return []int{idx2, idx1}
		} else {
			seen[num] = idx1
		}
	}
	return nil
}
