import 'package:test/test.dart';
import '../question1/treeNode.dart';
import 'identical.dart';
void main() {
  group('Determine if Two Trees Are Identical', () {
    test('Both trees are empty', () {
      TreeNode? root1;
      TreeNode? root2;

      expect(isIdentical(root1, root2), true);
    });

    test('One tree is empty, the other is not', () {
      TreeNode root1 = TreeNode(1);
      TreeNode? root2;

      expect(isIdentical(root1, root2), false);
    });

    test('Identical trees with same structure and values', () {
      TreeNode root1 = TreeNode(
        1,
        left: TreeNode(2),
        right: TreeNode(3),
      );

      TreeNode root2 = TreeNode(
        1,
        left: TreeNode(2),
        right: TreeNode(3),
      );

      expect(isIdentical(root1, root2), true);
    });

    test('Same structure but different values', () {
      TreeNode root1 = TreeNode(
        1,
        left: TreeNode(2),
        right: TreeNode(3),
      );

      TreeNode root2 = TreeNode(
        1,
        left: TreeNode(4), // different value
        right: TreeNode(3),
      );

      expect(isIdentical(root1, root2), false);
    });

    test('Different structure but same values', () {
      TreeNode root1 = TreeNode(
        1,
        left: TreeNode(2),
      );

      TreeNode root2 = TreeNode(
        1,
        right: TreeNode(2),
      );

      expect(isIdentical(root1, root2), false);
    });

    test('Complex identical trees', () {
      TreeNode root1 = TreeNode(
        1,
        left: TreeNode(
          2,
          left: TreeNode(4),
        ),
        right: TreeNode(
          3,
          right: TreeNode(5),
        ),
      );

      TreeNode root2 = TreeNode(
        1,
        left: TreeNode(
          2,
          left: TreeNode(4),
        ),
        right: TreeNode(
          3,
          right: TreeNode(5),
        ),
      );

      expect(isIdentical(root1, root2), true);
    });
  });
}
