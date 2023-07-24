import 'package:flutter/material.dart';

class ComicCardHorizontal extends StatelessWidget {
  const ComicCardHorizontal({
    super.key,
    required this.image,
    required this.name,
    required this.volumeName,
    required this.issueNumber,
    required this.issueDate,
    required this.onPress,
  });

  final String image;
  final String volumeName;
  final String name;
  final String issueNumber;
  final String issueDate;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SizedBox(
        width: double.infinity,
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ComicImage(image: image),
            const SizedBox(
              width: 12,
            ),
            ComicInfo(
              volumeName: volumeName,
              name: name,
              issueNumber: issueNumber,
              issueDate: issueDate,
            ),
          ],
        ),
      ),
    );
  }
}

class ComicImage extends StatelessWidget {
  const ComicImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: image,
        fit: BoxFit.contain,
      ),
    );
  }
}

class ComicInfo extends StatelessWidget {
  const ComicInfo({
    super.key,
    required this.volumeName,
    required this.name,
    required this.issueNumber,
    required this.issueDate,
  });

  final String volumeName;
  final String name;
  final String issueNumber;
  final String issueDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              '$volumeName: $name #$issueNumber',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.clip,
              maxLines: 4,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            issueDate,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
}
