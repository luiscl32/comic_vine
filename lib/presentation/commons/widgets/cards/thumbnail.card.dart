import 'package:flutter/material.dart';

class ThumbnailCard extends StatelessWidget {
  const ThumbnailCard({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ThumbnailImage(image: image),
        const SizedBox(
          width: 10,
        ),
        ThumbnailTitle(name: name),
      ],
    );
  }
}

class ThumbnailTitle extends StatelessWidget {
  const ThumbnailTitle({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ThumbnailImage extends StatelessWidget {
  const ThumbnailImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: const SizedBox(
        width: 40,
        height: 40,
        child: Icon(
          Icons.info_outline,
          size: 32,
          color: Colors.blue,
        ),
        //* todo change of state image
        //FadeInImage.assetNetwork(
        // placeholder: 'assets/loading.gif',
        // image: image,
        // fit: BoxFit.contain,
        //),
      ),
    );
  }
}
