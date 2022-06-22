// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:lab_2/dart/parameters.dart';

void main() {
  test('empty list', () {
    var result = mapNames([]);

    expect(result.isEmpty, true);
  });

  test('single name', () {
    var result = mapNames(["Khaled"]);

    expect(result.length, 1);
    expect(result['Khaled'], 1);
  });

  test('duplicate name', () {
    var result = mapNames(["Khaled", "Khaled"]);

    expect(result.length, 1);
    expect(result['Khaled'], 2);
  });
  test('3 items, 2 dupes mid', () {
    var result = mapNames(["Khaled", "Omar", "Khaled"]);

    expect(result.length, 2);
    expect(result['Khaled'], 2);
    expect(result['Omar'], 1);
  });
  test('3 items, 2 dupes start', () {
    var result = mapNames(["Khaled", "Khaled", "Omar"]);

    expect(result.length, 2);
    expect(result['Khaled'], 2);
    expect(result['Omar'], 1);
  });
  test('3 items, 2 dupes end', () {
    var result = mapNames(["Omar", "Khaled", "Khaled"]);

    expect(result.length, 2);
    expect(result['Khaled'], 2);
    expect(result['Omar'], 1);
  });

  test('2 items', () {
    var result = mapNames(["Omar", "Khaled"]);

    expect(result.length, 2);
    expect(result['Khaled'], 1);
    expect(result['Omar'], 1);
  });
  test('4 items, 2 dupes each', () {
    var result = mapNames(["Omar", "Khaled", "Omar", "Khaled"]);

    expect(result.length, 2);
    expect(result['Khaled'], 2);
    expect(result['Omar'], 2);
  });
  test('5 items, 2 dupes each', () {
    var result = mapNames(["Omar", "Khaled", "Yousef", "Omar", "Khaled"]);

    expect(result.length, 3);
    expect(result['Khaled'], 2);
    expect(result['Omar'], 2);
    expect(result['Yousef'], 1);
  });

  test('5 items, 2 dupes each', () {
    var result = mapNames(["Omar", "Khaled", "Yousef", "Omar", "Khaled"]);

    expect(result.length, 3);
    expect(result['Khaled'], 2);
    expect(result['Omar'], 2);
    expect(result['Yousef'], 1);
  });
  test('5 items, 3 dupes', () {
    var result = mapNames(["Omar", "Khaled", "Yousef", "Omar", "Omar"]);

    expect(result.length, 3);
    expect(result['Khaled'], 1);
    expect(result['Omar'], 3);
    expect(result['Yousef'], 1);
  });
}
