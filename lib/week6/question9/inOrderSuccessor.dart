/*
Farhad Akbari
12/19/2025
9. Inorder Successor in BST
Given a node in a binary search tree, find the node that appears immediately after it in
an inorder traversal.
 */
import '../question1/treeNode.dart';

TreeNode? inorderSuccessor(TreeNode? root, TreeNode target) {
  TreeNode? successor;

  while (root != null) {
    if (target.val < root.val) {
      successor = root;
      root = root.left;
    } else {
      root = root.right;
    }
  }
  return successor;
}
