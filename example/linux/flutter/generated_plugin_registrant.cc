//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <flutter_widget_function/flutter_widget_function_plugin.h>
#include <navigator_plus/navigator_plus_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) flutter_widget_function_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterWidgetFunctionPlugin");
  flutter_widget_function_plugin_register_with_registrar(flutter_widget_function_registrar);
  g_autoptr(FlPluginRegistrar) navigator_plus_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "NavigatorPlusPlugin");
  navigator_plus_plugin_register_with_registrar(navigator_plus_registrar);
}
