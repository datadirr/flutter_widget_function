import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_widget_function_platform_interface.dart';

/// An implementation of [FlutterWidgetFunctionPlatform] that uses method channels.
class MethodChannelFlutterWidgetFunction extends FlutterWidgetFunctionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_widget_function');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
