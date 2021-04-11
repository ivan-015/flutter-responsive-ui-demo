import 'package:demo/widgets/search_bar.dart';
import 'package:flutter/material.dart';

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
