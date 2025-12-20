/*
Farhad Akbari
12/19/2025
4. Symmetric Tree
Write a function that checks whether a binary tree is symmetric around its center.
A tree is symmetric if the left subtree is a mirror image of the right subtree.
 */
import '../question1/treeNode.dart';

bool isSymmetric(TreeNode? root) {
  bool isMirror(TreeNode? a, TreeNode? b) {
    if (a == null && b == null) return true;
    if (a == null || b == null) return false;
    return a.val == b.val &&
        isMirror(a.left, b.right) &&
        isMirror(a.right, b.left);
  }

  return isMirror(root?.left, root?.right);
}
