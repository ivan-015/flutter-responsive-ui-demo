import 'package:demo/widgets/email_list_view.dart';
import 'package:demo/widgets/search_bar.dart';
import 'package:demo/widgets/side_panel.dart';
import 'package:demo/widgets/tablet_desktop/desktop_email_view.dart';
import 'package:demo/widgets/tablet_desktop/tablet_desktop_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  @override
  _MediaQueryPageState createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: width <= 750
          ? AppBar(
              title: Text('E-mail App'),
            )
          : AppBar(
              title: TabletDesktopTitle(),
            ),
      drawer: width >= 1100
          ? null
          : Drawer(
              child: SidePanel(),
            ),
      body: width >= 1100 ? DesktopEmailView() : EmailListView(),
    );
  }
}
