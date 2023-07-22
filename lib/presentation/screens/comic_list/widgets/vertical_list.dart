import 'package:comic_vine/presentation/commons/widgets/cards/comic.card.horizontal.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.separated(
          itemCount: 100,
          itemBuilder: (context, index) => const ComicCardHorizontal(),
          separatorBuilder: (_, __) => const SizedBox(
            height: 12,
          ),
        ),
      ],
    );
  }
}
