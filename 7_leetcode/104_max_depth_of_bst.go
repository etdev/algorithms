package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func maxDepth(root *TreeNode) int {
	if root == nil {
		return 0
	}

	lCount, rCount := maxDepth(root.Left), maxDepth(root.Right)
	var maxCount int

	if lCount > rCount {
		maxCount = lCount
	} else {
		maxCount = rCount
	}

	return 1 + maxCount
}
