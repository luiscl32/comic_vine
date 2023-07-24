import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Text(
        description,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 16,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
