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
  }
}
