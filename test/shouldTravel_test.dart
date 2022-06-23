// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lab_2/dart/functions.dart';

void main() {
  test('22 & is not raining', () {
    var result = shouldTravel(22, false);

    expect(result, true);
  });
  test('min & is not raining', () {
    var result = shouldTravel(19, false);

    expect(result, true);
  });
  test('max & is not raining', () {
    var result = shouldTravel(24, false);

    expect(result, true);
  });
  test('22 & is raining', () {
    var result = shouldTravel(22, true);

    expect(result, false);
  });
  test('min & is raining', () {
    var result = shouldTravel(19, true);

    expect(result, false);
  });
  test('max & is raining', () {
    var result = shouldTravel(24, true);

    expect(result, false);
  });

  test('below min & is not raining', () {
    var result = shouldTravel(18, false);

    expect(result, false);
  });

  test('above max & is not raining', () {
    var result = shouldTravel(25, false);

    expect(result, false);
  });
}
