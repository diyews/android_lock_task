import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_lock_task/android_lock_task.dart';

void main() {
  const MethodChannel channel = MethodChannel('android_lock_task');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AndroidLockTask.platformVersion, '42');
  });
}
