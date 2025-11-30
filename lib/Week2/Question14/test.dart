import 'package:sky/Week2/Question14/charecter.dart';
import 'package:test/test.dart';

void main() {
  test('Checks vowel: a', () {
    expect(characterChecker('a'), 'Vowel');
  });

  test('Checks vowel: e', () {
    expect(characterChecker('e'), 'Vowel');
  });

  test('Checks vowel: i', () {
    expect(characterChecker('i'), 'Vowel');
  });

  test('Checks vowel: o', () {
    expect(characterChecker('o'), 'Vowel');
  });

  test('Checks vowel: u', () {
    expect(characterChecker('u'), 'Vowel');
  });

  test('Checks consonant: b', () {
    expect(characterChecker('b'), 'Consonant');
  });

  test('Checks consonant: z', () {
    expect(characterChecker('z'), 'Consonant');
  });

  test('Checks consonant: M uppercase', () {
    expect(characterChecker('M'), 'Consonant');
  });

  test('Checks consonant: t', () {
    expect(characterChecker('t'), 'Consonant');
  });

  test('Checks consonant: k', () {
    expect(characterChecker('k'), 'Consonant');
  });

  test('Checks number: 5', () {
    expect(characterChecker('5'), 'Number');
  });

  test('Checks number: 0', () {
    expect(characterChecker('0'), 'Number');
  });

  test('Checks number: 9', () {
    expect(characterChecker('9'), 'Number');
  });

  test('Checks number: 3', () {
    expect(characterChecker('3'), 'Number');
  });

  test('Checks number: 1', () {
    expect(characterChecker('1'), 'Number');
  });

  test('Checks special character: !', () {
    expect(characterChecker('!'), 'Special Character');
  });

  test('Checks special character: @', () {
    expect(characterChecker('@'), 'Special Character');
  });

  test('Checks special character: #', () {
    expect(characterChecker('#'), 'Special Character');
  });

  test('Checks special character: %', () {
    expect(characterChecker('%'), 'Special Character');
  });

  test('Checks special character: \$', () {
    expect(characterChecker('\$'), 'Special Character');
  });

  test('Checks special character: %', () {
    expect(characterChecker('%'), 'Special Character');
  });

  test('Checks special character: س', () {
    expect(characterChecker('س'), 'Special Character');
  });
}
