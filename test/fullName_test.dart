// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lab_2/dart/parameters.dart';

void main() {
  test('first and last name', () {
    var result = fullName("Khaled", "Alhendi");

    expect(result, "Khaled Alhendi");
  });
  test('empty first name', () {
    var result = fullName("", "Alhendi");

    expect(result, " Alhendi");
  });
  test('empty last name', () {
    var result = fullName("Khaled", "");

    expect(result, "Khaled ");
  });
}
