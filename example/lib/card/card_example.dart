import 'package:flutter/material.dart';
import 'package:flutter_widget_function/widget/card/dd_card.dart';
import 'package:flutter_widget_function/widget/responsive/responsive_layout.dart';

class CardExample extends StatefulWidget {
  const CardExample({super.key});

  @override
  State<CardExample> createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: _mb(context),
      tabletBody: _mb(context),
      desktopBody: _mb(context),
    );
  }

  _mb(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Example")),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                DDCard(
                  padding: EdgeInsets.all(50),
                  color: Colors.blue,
                  shadowColor: Colors.grey,
                  radius: 20,
                  blur: 15,
                  child: Center(
                    child: Text(
                      "Card",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
