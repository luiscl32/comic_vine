import 'package:flutter/material.dart';

class ComicHeader extends StatelessWidget {
  const ComicHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: image,
        fit: BoxFit.contain,
      ),
    );
  }
}
