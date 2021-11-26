import 'package:flutter/cupertino.dart';

class Description extends StatelessWidget {

  final String title;
  final String desc;
  Description({required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(desc),
        const SizedBox(height: 8.0),
      ],
    );
  }
}