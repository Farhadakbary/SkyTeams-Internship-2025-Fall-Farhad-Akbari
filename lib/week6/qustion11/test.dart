import 'package:test/test.dart';
import '../question1/treeNode.dart';
import 'diameter.dart';

void main() {
  group('Diameter of Binary Tree', () {
    test('Empty tree', () {
      TreeNode? root;
      expect(diameter(root), 0);
    });

    test('Single node tree', () {
      TreeNode root = TreeNode(1);
      expect(diameter(root), 1);
    });

    test('Left skewed tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2, left: TreeNode(3, left: TreeNode(4))),
      );

      expect(diameter(root), 4);
    });

    test('Right skewed tree', () {
      TreeNode root = TreeNode(
        1,
        right: TreeNode(2, right: TreeNode(3, right: TreeNode(4))),
      );

      expect(diameter(root), 4);
    });

    test('Balanced tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
        right: TreeNode(3),
      );

      expect(diameter(root), 4);
    });

    test('Complex tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2, left: TreeNode(4)),
        right: TreeNode(
          3,
          right: TreeNode(5, left: TreeNode(6), right: TreeNode(7)),
        ),
      );
      expect(diameter(root), 6);
    });
  });
}
