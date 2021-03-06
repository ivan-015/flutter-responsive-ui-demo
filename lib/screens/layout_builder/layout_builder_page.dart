import 'package:demo/widgets/email_list_view.dart';
import 'package:demo/widgets/side_panel.dart';
import 'package:demo/widgets/tablet_desktop/desktop_email_view.dart';
import 'package:demo/widgets/tablet_desktop/tablet_desktop_title.dart';
import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatefulWidget {
  @override
  _LayoutBuilderPageState createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  final tablet = 750;
  final desktop = 1100;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var width = constraints.maxWidth;
      if (width < tablet) {
        // Scaffold for mobile
        return Scaffold(
          appBar: AppBar(
            title: Text('E-mail App'),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                onPressed: () {},
              ),
              SizedBox(width: 30),
            ],
          ),
          drawer: Drawer(
            child: SidePanel(),
          ),
          body: EmailListView(),
        );
      } else if (width < desktop) {
        // Scaffold for tablet
        return Scaffold(
          appBar: AppBar(
            title: TabletDesktopTitle(),
          ),
          drawer: Drawer(
            child: SidePanel(),
          ),
          body: EmailListView(),
        );
      }
      // Desktop Scaffold
      return Scaffold(
        appBar: AppBar(
          title: TabletDesktopTitle(),
          actions: [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () {},
            ),
            SizedBox(width: 30)
          ],
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          var childWidth = constraints.maxWidth;
          // Mobile and Tablet
          if (childWidth < desktop) {
            return EmailListView();
          }
          return DesktopEmailView();
        }),
      );
    });
  }
}
