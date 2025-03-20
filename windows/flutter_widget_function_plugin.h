#ifndef FLUTTER_PLUGIN_FLUTTER_WIDGET_FUNCTION_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_WIDGET_FUNCTION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_widget_function {

class FlutterWidgetFunctionPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterWidgetFunctionPlugin();

  virtual ~FlutterWidgetFunctionPlugin();

  // Disallow copy and assign.
  FlutterWidgetFunctionPlugin(const FlutterWidgetFunctionPlugin&) = delete;
  FlutterWidgetFunctionPlugin& operator=(const FlutterWidgetFunctionPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_widget_function

#endif  // FLUTTER_PLUGIN_FLUTTER_WIDGET_FUNCTION_PLUGIN_H_
