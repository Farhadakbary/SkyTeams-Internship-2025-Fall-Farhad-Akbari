/*
Farhad Akbari
2025/14/12
1. Height of Binary Tree
Write a function that returns the number of levels in a binary tree.
An empty tree has height 0, and a tree with only one node has height 1
 */
import 'treeNode.dart';
int height(TreeNode? root) {
  if (root == null) return 0;

  int leftHeight = height(root.left);
  int rightHeight = height(root.right);

  return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
}
void main() {
  TreeNode root = TreeNode(1);
  root.left = TreeNode(2);
  root.right = TreeNode(3);
  root.left!.left = TreeNode(4);

  print(height(root));
}
