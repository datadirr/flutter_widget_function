import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_widget_function/function/extension.dart';
import 'package:flutter_widget_function/widget/dialog/progress_dialog.dart';
import 'package:flutter_widget_function/widget/responsive/responsive_layout.dart';
import 'package:flutter_widget_function_example/card/card_example.dart';
import 'package:flutter_widget_function_example/textfield/textfield_example.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late ProgressDialog _dialog;

  @override
  void initState() {
    super.initState();
    print("-000000001".parseInt());
    _dialog = ProgressDialog(context);
    _dialog.show();
    Timer(const Duration(seconds: 1), () {
      _dialog.dismiss();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: _mbDashboard(context),
      tabletBody: _tbDashboard(context),
      desktopBody: _dbDashboard(context),
    );
  }

  _mbDashboard(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_widget_function')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Responsive Mobile Body"),
              const SizedBox(height: 20),
              _widgets(context),
            ],
          ),
        ),
      ),
    );
  }

  _tbDashboard(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(title: const Text('widgets_functions')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Responsive Tablet Body"),
              const SizedBox(height: 20),
              _widgets(context),
            ],
          ),
        ),
      ),
    );
  }

  _dbDashboard(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(title: const Text('widgets_functions')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Responsive Desktop Body"),
              const SizedBox(height: 20),
              _widgets(context),
            ],
          ),
        ),
      ),
    );
  }

  _widgets(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextFieldExample()),
              );
            },
            child: const Text("TextField"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardExample()),
              );
            },
            child: const Text("Card"),
          ),
        ],
      ),
    );
  }
}
