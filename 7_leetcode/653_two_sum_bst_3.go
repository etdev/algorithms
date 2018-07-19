package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func findTarget(root *TreeNode, k int) bool {
	// hash_set + two index pointers + inorder traversal trick
	seen := inOrder(root, []int{})
	a, b := 0, len(seen)-1

	for a < b {
		if seen[a]+seen[b] == k {
			return true
		} else if seen[a]+seen[b] < k {
			a++
		} else {
			b--
		}
	}
	return false
}

func inOrder(root *TreeNode, seen []int) []int {
	if root == nil {
		return seen
	}
	seen = inOrder(root.Left, seen)
	seen = append(seen, root.Val)
	seen = inOrder(root.Right, seen)

	return seen
}
