import 'package:test/test.dart';
import '../question1/treeNode.dart';
import '../question10/kthLargest.dart';

void main() {
  group('Kth Largest Element in BST', () {
    test('Empty tree returns -1', () {
      TreeNode? root;
      expect(kthLargest(root, 1), -1);
    });

    test('Single node tree, k=1', () {
      TreeNode root = TreeNode(10);
      expect(kthLargest(root, 1), 10);
    });

    test('k larger than number of nodes returns -1', () {
      TreeNode root = TreeNode(
        20,
        left: TreeNode(10),
        right: TreeNode(30),
      );

      expect(kthLargest(root, 5), -1);
    });

    test('BST with multiple nodes', () {
      TreeNode root = TreeNode(
        50,
        left: TreeNode(
          30,
          left: TreeNode(20),
          right: TreeNode(40),
        ),
        right: TreeNode(
          70,
          left: TreeNode(60),
          right: TreeNode(80),
        ),
      );

      expect(kthLargest(root, 1), 80);
      expect(kthLargest(root, 2), 70);
      expect(kthLargest(root, 3), 60);
      expect(kthLargest(root, 4), 50);
      expect(kthLargest(root, 5), 40);
      expect(kthLargest(root, 6), 30);
      expect(kthLargest(root, 7), 20);
      expect(kthLargest(root, 8), -1);
    });

    test('BST with duplicate values', () {
      TreeNode root = TreeNode(
        50,
        left: TreeNode(
          30,
          left: TreeNode(30),
          right: TreeNode(40),
        ),
        right: TreeNode(
          70,
          right: TreeNode(70),
        ),
      );

      expect(kthLargest(root, 1), 70);
      expect(kthLargest(root, 2), 70);
      expect(kthLargest(root, 3), 50);
      expect(kthLargest(root, 4), 40);
      expect(kthLargest(root, 5), 30);
      expect(kthLargest(root, 6), 30);
      expect(kthLargest(root, 7), -1);
    });
  });
}
