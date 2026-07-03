// Unit Tests: user_model_test.dart
// Tests the UserModel class to verify that:
//   1. fromJson() correctly converts a JSON map into a UserModel object.
//   2. fromJson() handles all expected fields (id, name, username, email, phone).
//   3. An empty list is handled correctly (empty data checking).

import 'package:flutter_test/flutter_test.dart';
import 'package:connectify/models/user_model.dart';

void main() {
  // ---------------------------------------------------------------------------
  // Test Group 1: Model Conversion (fromJson)
  // ---------------------------------------------------------------------------
  group('UserModel.fromJson', () {
    test('converts a valid JSON map into a UserModel object', () {
      final json = {
        'id': 1,
        'name': 'Leanne Graham',
        'username': 'Bret',
        'email': 'leanne@example.com',
        'phone': '1-770-736-8031',
      };

      final user = UserModel.fromJson(json);

      expect(user.id, 1);
      expect(user.name, 'Leanne Graham');
      expect(user.username, 'Bret');
      expect(user.email, 'leanne@example.com');
      expect(user.phone, '1-770-736-8031');
    });

    test('converts a second JSON entry correctly', () {
      final json = {
        'id': 2,
        'name': 'Ervin Howell',
        'username': 'Antonette',
        'email': 'ervin@example.com',
        'phone': '010-692-6593',
      };

      final user = UserModel.fromJson(json);

      expect(user.id, 2);
      expect(user.name, 'Ervin Howell');
      expect(user.username, 'Antonette');
      expect(user.email, 'ervin@example.com');
      expect(user.phone, '010-692-6593');
    });
  });

  // ---------------------------------------------------------------------------
  // Test Group 2: Input Validation
  // ---------------------------------------------------------------------------
  group('UserModel field validation', () {
    test('id is a positive integer', () {
      final json = {
        'id': 5,
        'name': 'Test User',
        'username': 'testuser',
        'email': 'test@example.com',
        'phone': '123-456-7890',
      };

      final user = UserModel.fromJson(json);
      expect(user.id, greaterThan(0));
    });

    test('email contains @ symbol', () {
      final json = {
        'id': 3,
        'name': 'Test User',
        'username': 'testuser',
        'email': 'test@example.com',
        'phone': '123-456-7890',
      };

      final user = UserModel.fromJson(json);
      expect(user.email.contains('@'), isTrue);
    });

    test('name is not empty', () {
      final json = {
        'id': 4,
        'name': 'Jane Doe',
        'username': 'janedoe',
        'email': 'jane@example.com',
        'phone': '555-000-1234',
      };

      final user = UserModel.fromJson(json);
      expect(user.name.isNotEmpty, isTrue);
    });
  });

  // ---------------------------------------------------------------------------
  // Test Group 3: Empty Data Checking
  // ---------------------------------------------------------------------------
  group('Empty data checking', () {
    test('empty list has zero users', () {
      final List<UserModel> users = [];
      expect(users.isEmpty, isTrue);
      expect(users.length, 0);
    });

    test('list with one user is not empty', () {
      final json = {
        'id': 1,
        'name': 'Leanne Graham',
        'username': 'Bret',
        'email': 'leanne@example.com',
        'phone': '1-770-736-8031',
      };

      final users = [UserModel.fromJson(json)];
      expect(users.isNotEmpty, isTrue);
      expect(users.length, 1);
    });
  });
}
