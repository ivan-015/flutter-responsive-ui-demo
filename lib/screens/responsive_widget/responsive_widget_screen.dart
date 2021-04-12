import 'package:demo/widgets/email_list_view.dart';
import 'package:demo/widgets/responsive_widget_builder.dart';
import 'package:demo/widgets/side_panel.dart';
import 'package:demo/widgets/tablet_desktop/desktop_email_view.dart';
import 'package:demo/widgets/tablet_desktop/tablet_desktop_title.dart';
import 'package:flutter/material.dart';

class ResponsiveWidgetPage extends StatefulWidget {
  @override
  _ResponsiveWidgetPageState createState() => _ResponsiveWidgetPageState();
}

class _ResponsiveWidgetPageState extends State<ResponsiveWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-mail App'),
      ),
      drawer: Drawer(
        child: SidePanel(),
      ),
      body: EmailListView(),
    );
  }
}

class MobileTabletScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ResponsiveWidgetBuilder(
        mobileWidget: Text('E-mail App'),
        tabletWidget: TabletDesktopTitle(),
      )),
      drawer: Drawer(
        child: SidePanel(),
      ),
      body: EmailListView(),
    );
  }
}

class DesktopScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: TabletDesktopTitle(
    //     ),
    //     actions: [
    //       IconButton(
    //         icon: Icon(Icons.delete),
    //         onPressed: () {},
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.settings),
    //         onPressed: () {},
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.help),
    //         onPressed: () {},
    //       ),
    //       SizedBox(width: 30)
    //     ],
    //   ),
    //   body: LayoutBuilder(builder: (context, constraints) {
    //     var childWidth = constraints.maxWidth;
    //     // Mobile and Tablet
    //     if (childWidth < desktop) {
    //       return EmailListView();
    //     }
    //     return DesktopEmailView(width: width);
    //   }),
    // );
  }
}
