import 'package:demo/widgets/email_list_view.dart';
import 'package:demo/widgets/side_panel.dart';
import 'package:flutter/material.dart';

class DesktopEmailView extends StatelessWidget {
  const DesktopEmailView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: SidePanel(),
        ),
        Expanded(
          flex: 7,
          child: EmailListView(),
        ),
      ],
    );
  }
}
