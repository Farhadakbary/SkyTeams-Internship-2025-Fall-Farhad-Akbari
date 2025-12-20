/*
Farhad Akbari
12/19/2025
6. Children Sum Parent
Write a function that checks whether every non-leaf node’s value is equal to the sum of
the values of its left and right children.
 */
import 'package:sky/week6/question1/treeNode.dart';

bool childrenSum(TreeNode? root) {
  if (root == null || (root.left == null && root.right == null)) {
    return true;
  }

  int sum = (root.left?.val ?? 0) + (root.right?.val ?? 0);

  return root.val == sum &&
      childrenSum(root.left) &&
      childrenSum(root.right);
}
