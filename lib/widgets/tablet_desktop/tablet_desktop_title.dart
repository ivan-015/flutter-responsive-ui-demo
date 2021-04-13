import 'package:demo/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class TabletDesktopTitle extends StatelessWidget {
  const TabletDesktopTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('E-mail App'),
        Spacer(),
        Expanded(
          flex: 8,
          child: SearchBar(),
        ),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
