package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

// hash_set solution
func findTarget(root *TreeNode, k int) bool {
	m := map[int]bool{}
	return find(root, k, m)
}

func find(root *TreeNode, k int, m map[int]bool) bool {
	if root == nil {
		return false
	}
	if m[k-root.Val] {
		return true
	}
	m[root.Val] = true
	return find(root.Left, k, m) || find(root.Right, k, m)
}
