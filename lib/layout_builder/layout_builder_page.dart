import 'package:demo/widgets/email_list_view.dart';
import 'package:demo/widgets/search_bar.dart';
import 'package:demo/widgets/side_panel.dart';
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
      if (width < desktop) {
        // Scaffold for mobile and tablet
        return Scaffold(
          appBar: AppBar(
            title: LayoutBuilder(builder: (context, constraints) {
              var childWidth = constraints.maxWidth;
              if (childWidth < tablet) {
                // Mobile
                return Text('E-mail App');
              } else {
                // Tablet
                return TabletDesktopTitle(childWidth: childWidth);
              }
            }),
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
          title: TabletDesktopTitle(
            childWidth: width,
          ),
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
          return Row(
            children: [
              Container(
                width: width * 0.3,
                child: SidePanel(),
              ),
              Container(
                width: width * 0.7,
                child: EmailListView(),
              ),
            ],
          );
        }),
      );
    });
  }
}

class TabletDesktopTitle extends StatelessWidget {
  const TabletDesktopTitle({
    Key key,
    @required this.childWidth,
  }) : super(key: key);

  final double childWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('E-mail App'),
        Spacer(),
        SizedBox(
          width: childWidth * .75,
          child: SearchBar(),
        ),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
