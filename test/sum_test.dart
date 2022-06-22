// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lab_2/dart/parameters.dart';

void main() {
  test('list of zeros', () {
    var result = sum([0, 0, 0]);

    expect(result, 0);
  });
  test('empty list', () {
    var result = sum([]);

    expect(result, 0);
  });
  test('list', () {
    var result = sum([1, 6, 2, 7, 10]);

    expect(result, 26);
  });
  test('list of negative number', () {
    var result = sum([-1, -6, -2, -7, -10]);

    expect(result, -26);
  });
}
