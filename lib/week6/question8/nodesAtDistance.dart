/*
Farhad Akbari
12/19/2025
8. Nodes at Given Distance in a Binary Tree
Write a function that prints all nodes that are exactly k edges away from the root node.
 */
import '../question1/treeNode.dart';

List<int> nodesAtDistanceK(TreeNode? root, int k) {
  List<int> result = [];

  void depth(TreeNode? node, int d) {
    if (node == null) return;
    if (d == k) {
      result.add(node.val);
      return;
    }
    depth(node.left, d + 1);
    depth(node.right, d + 1);
  }

  depth(root, 0);
  return result;
}
