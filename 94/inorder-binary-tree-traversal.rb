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
# @return {Integer[]}
def inorder_traversal(root, new_root = [])
  call_traversal(root, new_root)

  return new_root
end

def call_traversal(root, new_root)
if !root.nil?
  inorder_traversal(root.left, new_root)
  new_root.push(root.val)
  inorder_traversal(root.right, new_root)
end

end