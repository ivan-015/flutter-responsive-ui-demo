import 'package:demo/widgets/email_list_view.dart';
import 'package:demo/widgets/side_panel.dart';
import 'package:flutter/material.dart';

class DesktopEmailView extends StatelessWidget {
  const DesktopEmailView({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
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
  }
}
