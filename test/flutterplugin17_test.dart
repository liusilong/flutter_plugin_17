import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterplugin17/flutterplugin17.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutterplugin17');

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
    expect(await Flutterplugin17.platformVersion, '42');
  });
}
