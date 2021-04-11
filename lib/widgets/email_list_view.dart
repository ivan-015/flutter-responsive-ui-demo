import 'package:flutter/material.dart';

import 'mobile_mail_card.dart';

class EmailListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        return MobileMailCard('Item $i', 'Contents of item $i');
      },
      separatorBuilder: (context, i) => const Divider(),
      itemCount: 20,
      padding: EdgeInsets.all(10),
    );
  }
}
