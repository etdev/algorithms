# https://leetcode.com/problems/invert-binary-tree/description/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(node)
  return node if node.nil?
  node.left, node.right = node.right, node.left
  invert_tree(node.left)
  invert_tree(node.right)
  node
end

