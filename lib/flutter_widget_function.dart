import 'flutter_widget_function_platform_interface.dart';

class FlutterWidgetFunction {
  Future<String?> getPlatformVersion() {
    return FlutterWidgetFunctionPlatform.instance.getPlatformVersion();
  }
}
