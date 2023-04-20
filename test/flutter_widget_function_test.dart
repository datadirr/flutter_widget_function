import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_function/flutter_widget_function.dart';
import 'package:flutter_widget_function/flutter_widget_function_platform_interface.dart';
import 'package:flutter_widget_function/flutter_widget_function_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterWidgetFunctionPlatform
    with MockPlatformInterfaceMixin
    implements FlutterWidgetFunctionPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterWidgetFunctionPlatform initialPlatform =
      FlutterWidgetFunctionPlatform.instance;

  test('$MethodChannelFlutterWidgetFunction is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterWidgetFunction>());
  });

  test('getPlatformVersion', () async {
    FlutterWidgetFunction flutterWidgetFunctionPlugin = FlutterWidgetFunction();
    MockFlutterWidgetFunctionPlatform fakePlatform =
        MockFlutterWidgetFunctionPlatform();
    FlutterWidgetFunctionPlatform.instance = fakePlatform;

    expect(await flutterWidgetFunctionPlugin.getPlatformVersion(), '42');
  });
}
