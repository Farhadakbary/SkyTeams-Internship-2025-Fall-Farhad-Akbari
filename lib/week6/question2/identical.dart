/*
Farhad Akbari
2025/16/12
2. Determine if Two Trees Are Identical 
Write a function that checks whether two binary trees are identical in both structure and 
node values. 
 */
import 'package:test/test.dart';
 import '../question1/treeNode.dart';
 bool isIdentical(TreeNode? root1, TreeNode? root2) {
  if (root1 == null && root2 == null) return true;
  if (root1 == null || root2 == null) return false;
  if (root1.val != root2.val) return false;
  return isIdentical(root1.left, root2.left) && isIdentical(root1.right, root2.right);
 }
 void main() {
  TreeNode root1 = TreeNode(1);
  root1.left = TreeNode(2);
  root1.right = TreeNode(3);
  TreeNode root2= TreeNode(1);
  root2.left = TreeNode(2);
  root2.right = TreeNode(3);
  test('returns true for identical tree', () {
    expect(isIdentical(root1,root2),true);
  });
 }