/*
Farhad Akbari
12/19/2025
7. Array to BST
Given a sorted array, construct a height-balanced binary search tree such that the
inorder traversal of the tree produces the same array.
 */
import 'treeNode.dart';

TreeNode? sortedArray(List<int> arr) {
  TreeNode? build(int l, int r) {
    if (l > r) return null;

    int mid = (l + r) ~/ 2;
    TreeNode node = TreeNode(arr[mid]);

    node.left = build(l, mid - 1);
    node.right = build(mid + 1, r);

    return node;
  }
  // not completed yet
  return build(0, arr.length - 1);
}
