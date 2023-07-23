import 'package:comic_vine/domain/models/models.dart';
import 'package:comic_vine/presentation/commons/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GridList extends StatelessWidget {
  const GridList({super.key, required this.comics});

  final List<Result> comics;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      shrinkWrap: true,
      childAspectRatio: 0.6,
      crossAxisCount: 2,
      children: List.generate(
        comics.length,
        (index) => ComicCard(
          image: comics[index].image!.originalUrl!,
          volumeName: comics[index].volume!.name!,
          name: comics[index].name ?? '',
          issueNumber: comics[index].issueNumber!,
          issueDate:
              DateFormat('MMMM d, y', 'en_US').format(comics[index].dateAdded!),
        ),
      ),
    );
  }
}
