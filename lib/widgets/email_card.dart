import 'package:flutter/material.dart';

class EmailCard extends StatelessWidget {
  final String title;
  final String contents;
  const EmailCard(
    this.title,
    this.contents, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.amber,
      child: Row(
        children: [
          Icon(
            Icons.mail,
            size: 40,
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 12),
              Text(
                contents,
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              )
            ],
          ),
          Spacer(flex: 10),
          Icon(
            Icons.flag_outlined,
            size: 40,
          )
        ],
      ),
    );
  }
}
