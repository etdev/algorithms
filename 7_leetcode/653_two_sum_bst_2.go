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
	// using BFS + hash_set
	seen := map[int]bool{}
	var node TreeNode
	q := []TreeNode{}
	q = append(q, *root)

	// while queue not empty
	for len(q) > 0 {
		// get next node
		node = q[0]
		q = q[1:]

		// return true if we've seen the complement
		if seen[k-node.Val] {
			return true
		}
		seen[node.Val] = true

		// add node's children to the queue
		if node.Left != nil {
			q = append(q, *node.Left)
		}
		if node.Right != nil {
			q = append(q, *node.Right)
		}
	}
	return false
}
