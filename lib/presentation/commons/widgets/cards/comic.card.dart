import 'package:flutter/material.dart';

class ComicCard extends StatelessWidget {
  const ComicCard({
    super.key,
    required this.image,
    required this.volumeName,
    required this.name,
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onPress,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.40,
        child: Column(
          children: [
            ComicImageGrid(image: image, width: width, height: height),
            const SizedBox(
              height: 10,
            ),
            ComicInfoGrid(
                volumeName: volumeName, name: name, issueNumber: issueNumber),
            Expanded(child: Container()),
            ComicDateAdded(issueDate: issueDate)
          ],
        ),
      ),
    );
  }
}

class ComicDateAdded extends StatelessWidget {
  const ComicDateAdded({
    super.key,
    required this.issueDate,
  });

  final String issueDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        issueDate,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black45,
        ),
      ),
    );
  }
}

class ComicInfoGrid extends StatelessWidget {
  const ComicInfoGrid({
    super.key,
    required this.volumeName,
    required this.name,
    required this.issueNumber,
  });

  final String volumeName;
  final String name;
  final String issueNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        '$volumeName: $name #$issueNumber',
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 2,
        overflow: TextOverflow.clip,
      ),
    );
  }
}

class ComicImageGrid extends StatelessWidget {
  const ComicImageGrid({
    super.key,
    required this.image,
    required this.width,
    required this.height,
  });

  final String image;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: image,
        fit: BoxFit.fill,
        width: width,
        height: height,
      ),
    );
  }
}
