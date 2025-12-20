/*
Farhad Akbari
12/19/2025
5. Check for Balanced Tree
Write a function that checks whether the height difference between the left and right
subtrees of every node is at most one.
 */
import '../question1/treeNode.dart';

bool isBalanced(TreeNode? root) {
  int height(TreeNode? node) {
    if (node == null) return 0;

    int lh = height(node.left);
    if (lh == -1) return -1;

    int rh = height(node.right);
    if (rh == -1) return -1;

    if ((lh - rh).abs() > 1) return -1;
    return 1 + (lh > rh ? lh : rh);
  }

  return height(root) != -1;
}
