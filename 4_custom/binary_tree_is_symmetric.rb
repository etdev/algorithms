# https://leetcode.com/problems/symmetric-tree/description/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(node)
  return true if node.nil?

  is_mirror?(node.left, node.right)
end

def is_mirror?(t1, t2)
  return true if t1.nil? && t2.nil?
  return false if t1.nil? || t2.nil?
  t1.val == t2.val && is_mirror?(t1.left, t2.right) && is_mirror?(t2.left, t1.right)
end
