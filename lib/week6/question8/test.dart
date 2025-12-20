import 'package:test/test.dart';
import '../question1/treeNode.dart';
import 'nodesAtDistance.dart';

void main() {
  group('Nodes at Given Distance K from Root', () {
    test('Empty tree returns empty list', () {
      TreeNode? root;
      expect(nodesAtDistanceK(root, 2), []);
    });

    test('k = 0 returns root value', () {
      TreeNode root = TreeNode(1);
      expect(nodesAtDistanceK(root, 0), [1]);
    });

    test('k greater than tree height returns empty list', () {
      TreeNode root = TreeNode(1, left: TreeNode(2));

      expect(nodesAtDistanceK(root, 5), []);
    });

    test('Two-level tree, k = 1', () {
      TreeNode root = TreeNode(1, left: TreeNode(2), right: TreeNode(3));

      final result = nodesAtDistanceK(root, 1)..sort();
      expect(result, [2, 3]);
    });

    test('Multi-level tree, k = 2', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
        right: TreeNode(3, right: TreeNode(6)),
      );

      final result = nodesAtDistanceK(root, 2)..sort();
      expect(result, [4, 5, 6]);
    });

    test('k = tree height', () {
      TreeNode root = TreeNode(1, right: TreeNode(2, right: TreeNode(3)));

      expect(nodesAtDistanceK(root, 2), [3]);
    });
  });
}
