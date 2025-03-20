import 'package:flutter/material.dart';
import 'package:flutter_widget_function/widget/responsive/responsive_layout.dart';
import 'package:flutter_widget_function/widget/text_field/dd_text_field.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: _mbTextFieldExample(context),
      tabletBody: _mbTextFieldExample(context),
      desktopBody: _mbTextFieldExample(context),
    );
  }

  _mbTextFieldExample(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField Example")),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [DDTextField(labelText: "Value", hintText: "Value")],
            ),
          ),
        ),
      ),
    );
  }
}
