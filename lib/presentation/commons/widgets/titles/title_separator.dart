import 'package:flutter/material.dart';

class TitleSeparator extends StatelessWidget {
  const TitleSeparator({super.key, required this.titleText});

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          color: Colors.black,
        )
      ],
    );
  }
}
