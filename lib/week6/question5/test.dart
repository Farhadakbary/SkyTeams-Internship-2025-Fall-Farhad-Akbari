import 'package:test/test.dart';
import '../question1/treeNode.dart';
import 'isBalanced.dart';

void main() {
  group('Check for Balanced Binary Tree', () {
    test('Empty tree is balanced', () {
      TreeNode? root;
      expect(isBalanced(root), true);
    });

    test('Single node tree is balanced', () {
      TreeNode root = TreeNode(1);
      expect(isBalanced(root), true);
    });

    test('Perfectly balanced tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
        right: TreeNode(3, left: TreeNode(6), right: TreeNode(7)),
      );

      expect(isBalanced(root), true);
    });

    test('Unbalanced tree (difference > 1)', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2, left: TreeNode(3, left: TreeNode(4))),
      );

      expect(isBalanced(root), false);
    });

    test('Unbalanced subtree not at root', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2, left: TreeNode(4, left: TreeNode(5))),
        right: TreeNode(3),
      );

      expect(isBalanced(root), false);
    });
  });
}
