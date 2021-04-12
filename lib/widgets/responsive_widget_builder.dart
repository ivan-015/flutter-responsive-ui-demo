import 'package:flutter/material.dart';
import 'package:demo/constants/breakpoints.dart' as breakpoints;

class ResponsiveWidgetBuilder extends StatelessWidget {
  final Widget mobileWidget;
  final Widget tabletWidget;
  final Widget desktopWidget;

  ResponsiveWidgetBuilder({
    Key key,
    @required this.mobileWidget,
    this.tabletWidget,
    this.desktopWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        if (tabletWidget != null &&
            width >= breakpoints.tablet &&
            width < breakpoints.desktop) {
          return tabletWidget;
        } else if (desktopWidget != null && width >= breakpoints.desktop) {
          return desktopWidget;
        }
        return mobileWidget;
      },
    );
  }
}
