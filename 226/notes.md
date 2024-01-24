226. Invert Binary Tree(Easy)

Given the root of a binary tree, invert the tree, and return its root.

 

Example 1:
![\[invert tree1\]()](invert1-tree.jpg)

Input: root = [4,2,7,1,3,6,9]
Output: [4,7,2,9,6,3,1]
Example 2:
![invert tree2](invert2-tree.jpg)


Input: root = [2,1,3]
Output: [2,3,1]
Example 3:

Input: root = []
Output: []
 

Constraints:

The number of nodes in the tree is in the range [0, 100].
-100 <= Node.val <= 100

Notes: 
This tree inversion is performed using pre-order traversal in a recursive manner, where each node has its children swapped before recursively traversing its children. The function returns and "unwinds the call stack" when it reaches a leaf node (both left and right children are nil) or if the node itself is nil. The call stack at any point represents the path from the root to the current node. After fully processing a node's left subtree, the stack unwinds back to that node before processing its right subtree. Once the right child is processed, the function returns to its caller, eventually clearing the stack when the entire tree has been inverted.