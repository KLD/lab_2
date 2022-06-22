// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lab_2/dart/parameters.dart';

void main() {
  test('one numbers', () {
    var result = average([5]).toInt();
    expect(result, 5);
  });
  test('two numbers', () {
    var result = average([12, 8]).toInt();
    expect(result, 10);
  });
  test('three numbers', () {
    var result = average([7, 2, 3]).toInt();
    expect(result, 4);
  });
}
