import 'package:test/test.dart';
import 'treeNode.dart';
import 'heightBinaryTree.dart';
void main() {
  group('height (Binary Tree)', () {
    test('returns 0 for null tree', () {
      expect(height(null), 0);
    });

    test('returns 1 for single node tree', () {
      TreeNode root = TreeNode(1);
      expect(height(root), 1);
    });

    test('returns correct height for left-skewed tree', () {
      TreeNode root = TreeNode(1,
          left: TreeNode(2,
              left: TreeNode(3)
          )
      );
      expect(height(root), 3);
    });

    test('returns correct height for right-skewed tree', () {
      TreeNode root = TreeNode(1,
          right: TreeNode(2,
              right: TreeNode(3,
                  right: TreeNode(4)
              )
          )
      );
      expect(height(root), 4);
    });

    test('returns correct height for balanced tree', () {
      TreeNode root = TreeNode(1,
          left: TreeNode(2,
              left: TreeNode(4),
              right: TreeNode(5)
          ),
          right: TreeNode(3)
      );
      expect(height(root), 3);
    });

    test('returns correct height for unbalanced tree', () {
      TreeNode root = TreeNode(1,
          left: TreeNode(2,
              left: TreeNode(3,
                  left: TreeNode(4)
              )
          ),
          right: TreeNode(5)
      );
      expect(height(root), 4);
    });
  });
}
