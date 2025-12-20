import 'package:test/test.dart';
import '../question1/treeNode.dart';
import '../question9/inorderSuccessor.dart';

void main() {
  group('Inorder Successor in BST', () {
    test('Empty tree returns null', () {
      TreeNode? root;
      TreeNode target = TreeNode(1);

      expect(inorderSuccessor(root, target), null);
    });

    test('Node with right subtree', () {
      TreeNode root = TreeNode(
        20,
        left: TreeNode(10, right: TreeNode(15)),
        right: TreeNode(30),
      );

      TreeNode target = root.left!;

      TreeNode? result = inorderSuccessor(root, target);

      expect(result?.val, 15);
    });

    test('Node without right subtree', () {
      TreeNode root = TreeNode(
        20,
        left: TreeNode(10, left: TreeNode(5)),
        right: TreeNode(30),
      );

      TreeNode target = root.left!;

      TreeNode? result = inorderSuccessor(root, target);

      expect(result?.val, 20);
    });

    test('Target is smallest node', () {
      TreeNode root = TreeNode(
        20,
        left: TreeNode(10, left: TreeNode(5)),
        right: TreeNode(30),
      );

      TreeNode target = root.left!.left!;

      TreeNode? result = inorderSuccessor(root, target);

      expect(result?.val, 10);
    });

    test('Target is largest node (no successor)', () {
      TreeNode root = TreeNode(20, left: TreeNode(10), right: TreeNode(30));

      TreeNode target = root.right!;

      TreeNode? result = inorderSuccessor(root, target);

      expect(result, null);
    });

    test('Complex BST', () {
      TreeNode root = TreeNode(
        50,
        left: TreeNode(30, left: TreeNode(20), right: TreeNode(40)),
        right: TreeNode(70, left: TreeNode(60), right: TreeNode(80)),
      );

      TreeNode target = root.left!.right!; // 40

      TreeNode? result = inorderSuccessor(root, target);

      expect(result?.val, 50);
    });
  });
}
