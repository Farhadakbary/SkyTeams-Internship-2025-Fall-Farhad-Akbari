import 'package:test/test.dart';
import 'treeNode.dart';
import '../question7/sortedArray.dart';

void main() {
  List<int> inorder(TreeNode? root) {
    if (root == null) return [];
    return [
      ...inorder(root.left),
      root.val,
      ...inorder(root.right),
    ];
  }
  bool isBalanced(TreeNode? root) {
    int height(TreeNode? node) {
      if (node == null) return 0;
      int lh = height(node.left);
      if (lh == -1) return -1;
      int rh = height(node.right);
      if (rh == -1) return -1;
      if ((lh - rh).abs() > 1) return -1;
      return 1 + (lh > rh ? lh : rh);
    }

    return height(root) != -1;
  }

  group('Sorted Array to BST', () {
    test('Empty array returns null tree', () {
      TreeNode? root = sortedArray([]);
      expect(root, null);
    });

    test('Single element array', () {
      TreeNode? root = sortedArray([10]);

      expect(root, isNotNull);
      expect(root!.val, 10);
      expect(root.left, null);
      expect(root.right, null);
    });

    test('Odd length array', () {
      List<int> arr = [1, 2, 3, 4, 5];
      TreeNode? root = sortedArray(arr);

      expect(inorder(root), arr);
      expect(isBalanced(root), true);
    });

    test('Even length array', () {
      List<int> arr = [1, 2, 3, 4, 5, 6];
      TreeNode? root = sortedArray(arr);

      expect(inorder(root), arr);
      expect(isBalanced(root), true);
    });

    test('Array with negative numbers', () {
      List<int> arr = [-10, -3, 0, 5, 9];
      TreeNode? root = sortedArray(arr);

      expect(inorder(root), arr);
      expect(isBalanced(root), true);
    });

    test('Large sorted array', () {
      List<int> arr = List.generate(15, (i) => i + 1);
      TreeNode? root = sortedArray(arr);

      expect(inorder(root), arr);
      expect(isBalanced(root), true);
    });
  });
}
