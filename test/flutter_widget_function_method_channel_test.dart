import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_function/flutter_widget_function_method_channel.dart';

void main() {
  MethodChannelFlutterWidgetFunction platform =
      MethodChannelFlutterWidgetFunction();
  const MethodChannel channel = MethodChannel('flutter_widget_function');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
