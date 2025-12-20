import 'package:test/test.dart';
import '../question1/treeNode.dart';
import 'chidrenSum.dart';

void main() {
  group('Children Sum Parent Property', () {
    test('Empty tree satisfies children sum property', () {
      TreeNode? root;
      expect(childrenSum(root), true);
    });

    test('Single node tree satisfies children sum property', () {
      TreeNode root = TreeNode(10);
      expect(childrenSum(root), true);
    });

    test('Valid children sum tree', () {
      TreeNode root = TreeNode(
        10,
        left: TreeNode(4, left: TreeNode(2), right: TreeNode(2)),
        right: TreeNode(6),
      );

      expect(childrenSum(root), true);
    });

    test('Invalid children sum at root', () {
      TreeNode root = TreeNode(10, left: TreeNode(3), right: TreeNode(6));

      expect(childrenSum(root), false);
    });

    test('Invalid children sum in subtree', () {
      TreeNode root = TreeNode(
        10,
        left: TreeNode(5, left: TreeNode(3)),
        right: TreeNode(5),
      );

      expect(childrenSum(root), false);
    });
    test('Node with only one child', () {
      TreeNode root = TreeNode(5, left: TreeNode(5));

      expect(childrenSum(root), true);
    });
  });
}
