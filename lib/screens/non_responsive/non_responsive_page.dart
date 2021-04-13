import 'package:demo/widgets/email_list_view.dart';
import 'package:demo/widgets/side_panel.dart';
import 'package:flutter/material.dart';

class NonResponsivePage extends StatefulWidget {
  @override
  _NonResponsivePageState createState() => _NonResponsivePageState();
}

class _NonResponsivePageState extends State<NonResponsivePage> {
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
