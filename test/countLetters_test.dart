// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lab_2/dart/functions.dart';

void main() {
  test('count empty name', () {
    var result = countLetters("", "z");

    expect(result, 0);
  });
  test('count 0', () {
    var result = countLetters("hello world", "z");

    expect(result, 0);
  });

  test('count 1', () {
    var result = countLetters("hello world", "r");

    expect(result, 1);
  });

  test('count 2', () {
    var result = countLetters("hello world", "o");

    expect(result, 2);
  });

  test('count 3', () {
    var result = countLetters("hello world", "l");

    expect(result, 3);
  });
}
