import 'package:flutter/material.dart';
import 'package:flutter_widget_function/keyboard/keyboard_dismiss.dart';
import 'package:flutter_widget_function_example/dashboard.dart';
import 'package:flutter_widget_function_example/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismiss(
        child: MaterialApp(
            routes: Routes.routes(context), home: const Dashboard()));
  }
}
