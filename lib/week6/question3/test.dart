import 'package:test/test.dart';
import '../question1/treeNode.dart';
import 'mirror.dart';
void main() {
  group('Mirror Binary Tree', () {
    test('Empty tree remains empty', () {
      TreeNode? root;
      expect(mirrorTree(root), null);
    });

    test('Single node tree remains unchanged', () {
      TreeNode root = TreeNode(1);

      TreeNode? mirrored = mirrorTree(root);

      expect(mirrored!.val, 1);
      expect(mirrored.left, null);
      expect(mirrored.right, null);
    });

    test('Two-level tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(2),
        right: TreeNode(3),
      );

      TreeNode? mirrored = mirrorTree(root);

      expect(mirrored!.left!.val, 3);
      expect(mirrored.right!.val, 2);
    });

    test('Multi-level tree', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(
          2,
          left: TreeNode(4),
          right: TreeNode(5),
        ),
        right: TreeNode(3),
      );

      TreeNode? mirrored = mirrorTree(root);

      expect(mirrored!.left!.val, 3);
      expect(mirrored.right!.val, 2);

      expect(mirrored.right!.left!.val, 5);
      expect(mirrored.right!.right!.val, 4);
    });

    test('Mirroring twice returns original structure', () {
      TreeNode root = TreeNode(
        1,
        left: TreeNode(
          2,
          left: TreeNode(4),
        ),
        right: TreeNode(3),
      );

      TreeNode? mirroredOnce = mirrorTree(root);
      TreeNode? mirroredTwice = mirrorTree(mirroredOnce);

      expect(mirroredTwice!.left!.val, 2);
      expect(mirroredTwice.right!.val, 3);
      expect(mirroredTwice.left!.left!.val, 4);
    });
  });
}
