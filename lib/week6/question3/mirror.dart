/*
Farhad Akbari
12/19/2025
3. Mirror Tree
Modify a binary tree so that it becomes its mirror image by swapping the left and right
child of every node.
 */
import '../question1/treeNode.dart';

TreeNode? mirrorTree(TreeNode? root) {
  if (root == null) return null;

  final left = mirrorTree(root.left);
  final right = mirrorTree(root.right);

  root.left = right;
  root.right = left;
  return root;
}
