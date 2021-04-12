import 'package:demo/widgets/side_panel.dart';
import 'package:demo/widgets/tablet_desktop/desktop_email_view.dart';
import 'package:demo/widgets/tablet_desktop/tablet_desktop_title.dart';
import 'package:flutter/material.dart';
import 'package:demo/constants/breakpoints.dart' as breakpoints;

import 'email_list_view.dart';

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
