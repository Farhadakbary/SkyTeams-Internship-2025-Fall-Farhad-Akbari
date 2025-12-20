/*
Farhad Akbari
12/19/2025
10. Kth Largest Element in a BST
Write a function that returns the kth largest value stored in a binary search tree.
 */
import '../question1/treeNode.dart';

int kthLargest(TreeNode? root, int k) {
  int count = 0;
  int result = -1;

  void reverseInorder(TreeNode? node) {
    if (node == null || count >= k) return;

    reverseInorder(node.right);
    count++;
    if (count == k) {
      result = node.val;
      return;
    }
    reverseInorder(node.left);
  }

  reverseInorder(root);
  return result;
}
