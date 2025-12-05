import 'stringRotation.dart';
import 'package:test/test.dart';
void main() {
  group('isRotation Tests', () {
    test('returns true for a valid rotation', () {
      expect(isRotation('abcd', 'cdab'), true);
      expect(isRotation('abcd', 'dabc'), true);
      expect(isRotation('rotation', 'tionrota'), true);
    });

    test('returns false for non-rotated strings', () {
      expect(isRotation('abcd', 'acbd'), false);
      expect(isRotation('abcd', 'abcdx'), false);
      expect(isRotation('hello', 'olleh'), false);
    });

    test('returns true for identical strings', () {
      expect(isRotation('abcd', 'abcd'), true);
    });
    test('returns true for identical strings', () {
      expect(isRotation('weed', 'edwe'), true);
    });
    test('returns false for strings of different lengths', () {
      expect(isRotation('abc', 'abcd'), false);
      expect(isRotation('', 'a'), false);
    });
    test('works with repeated characters', () {
      expect(isRotation('aaaa', 'aaaa'), true);
      expect(isRotation('aaaa', 'aaab'), false);
    });

    test('works with single-character strings', () {
      expect(isRotation('a', 'a'), true);
      expect(isRotation('a', 'b'), false);
    });
  });
}
