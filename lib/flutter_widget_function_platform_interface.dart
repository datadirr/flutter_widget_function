import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_widget_function_method_channel.dart';

abstract class FlutterWidgetFunctionPlatform extends PlatformInterface {
  /// Constructs a FlutterWidgetFunctionPlatform.
  FlutterWidgetFunctionPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterWidgetFunctionPlatform _instance =
      MethodChannelFlutterWidgetFunction();

  /// The default instance of [FlutterWidgetFunctionPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterWidgetFunction].
  static FlutterWidgetFunctionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterWidgetFunctionPlatform] when
  /// they register themselves.
  static set instance(FlutterWidgetFunctionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
