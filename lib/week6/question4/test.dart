import 'package:test/test.dart';
import '../question1/treeNode.dart';
import 'isSymmetric.dart';

void main() {
  group('Symmetric Binary Tree', () {
    test('Empty tree is symmetric', () {
      TreeNode? root;
      expect(isSymmetric(root), true);
    });

    test('Single node tree is symmetric', () {
      TreeNode root = TreeNode(1);
      expect(isSymmetric(root), true);
    });

    test('Perfectly symmetric tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(
          2,
          left: TreeNode(3),
          right: TreeNode(4),
        ),
        right: TreeNode(
          2,
          left: TreeNode(4),
          right: TreeNode(3),
        ),
      );

      expect(isSymmetric(root), true);
    });

    test('Structure is symmetric but values are different', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2),
        right: TreeNode(2, right: TreeNode(3)),
      );

      expect(isSymmetric(root), false);
    });

    test('Values are symmetric but structure is not', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(
          2,
          left: TreeNode(3),
        ),
        right: TreeNode(
          2,
          left: TreeNode(3),
        ),
      );

      expect(isSymmetric(root), false);
    });

    test('Asymmetric deep tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(
          2,
          right: TreeNode(3),
        ),
        right: TreeNode(
          2,
          right: TreeNode(3),
        ),
      );

      expect(isSymmetric(root), false);
    });
  });
}
