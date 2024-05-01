import 'package:flutter/material.dart';
import 'package:flutter_widget_function/function/http_ssl_certificate.dart';
import 'package:flutter_widget_function/widget/keyboard/keyboard_dismiss.dart';
import 'package:flutter_widget_function_example/dashboard.dart';
import 'package:flutter_widget_function_example/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpSSLCertificate.disable();
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
