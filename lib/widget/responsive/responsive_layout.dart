import 'package:flutter/material.dart';

/// [ResponsiveLayout] provide responsive layout
/// default body return Container()
class ResponsiveLayout extends StatelessWidget {
  /// size (px) ...-600
  final Widget? mobileBody;

  /// size (px) 600-1200
  final Widget? tabletBody;

  /// size (px) 600-...
  final Widget? desktopBody;

  const ResponsiveLayout(
      {super.key, this.mobileBody, this.tabletBody, this.desktopBody});

  @override
  Widget build(BuildContext context) {
    Widget defaultBody = mobileBody ?? tabletBody ?? desktopBody ?? Container();
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return mobileBody ?? defaultBody;
      } else if (constraints.maxWidth > 1200) {
        return desktopBody ?? defaultBody;
      } else {
        return tabletBody ?? defaultBody;
      }
    });
  }
}
