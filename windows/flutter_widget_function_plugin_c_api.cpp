#include "include/flutter_widget_function/flutter_widget_function_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_widget_function_plugin.h"

void FlutterWidgetFunctionPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_widget_function::FlutterWidgetFunctionPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
