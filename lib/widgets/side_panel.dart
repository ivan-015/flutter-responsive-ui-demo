import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 80,
          child: DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  'johndoe@email.com',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        ListTile(
          title: Text('Inbox'),
        ),
        ListTile(
          title: Text('Sent'),
        )
      ],
    );
  }
}
