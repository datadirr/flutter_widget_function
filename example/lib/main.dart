import 'package:flutter/material.dart';
import 'package:flutter_widget_function/function/http_ssl_certificate.dart';
import 'package:flutter_widget_function/widget/keyboard/keyboard_dismiss.dart';
import 'package:flutter_widget_function_example/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpSSLCertificate.disable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismiss(child: MaterialApp(home: const Dashboard()));
  }
}
