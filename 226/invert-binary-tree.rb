# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  node = root
  return if node.nil?

  node.left, node.right = node.right, node.left
  invert_tree(node.right)
  invert_tree(node.left)

  node

end