import 'package:comic_vine/domain/models/comic_list/last_issues.model.dart';
import 'package:comic_vine/presentation/commons/widgets/cards/comic.card.horizontal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({
    super.key,
    required this.comics,
  });

  final List<Result> comics;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverList.separated(
          itemCount: comics.length,
          itemBuilder: (context, index) => ComicCardHorizontal(
            image: comics[index].image!.originalUrl!,
            volumeName: comics[index].volume!.name!,
            name: comics[index].name ?? '',
            issueNumber: comics[index].issueNumber!,
            issueDate: DateFormat('MMMM d, y', 'en_US')
                .format(comics[index].dateAdded!),
          ),
          separatorBuilder: (_, __) => const SizedBox(
            height: 12,
          ),
        ),
      ],
    );
  }
}
