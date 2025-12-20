/*
Farhad Akbari
12/19/2025
11. Diameter of Tree
Write a function that returns the number of nodes on the longest path between any two
nodes in a binary tree.
 */
import '../question1/treeNode.dart';

int diameter(TreeNode? root) {
  int maxDiameter = 0;

  int height(TreeNode? node) {
    if (node == null) return 0;

    int lh = height(node.left);
    int rh = height(node.right);

    maxDiameter = (maxDiameter > lh + rh + 1)
        ? maxDiameter
        : lh + rh + 1;

    return 1 + (lh > rh ? lh : rh);
  }

  height(root);
  return maxDiameter;
}
