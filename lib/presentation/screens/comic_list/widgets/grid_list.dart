import 'package:comic_vine/presentation/commons/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      shrinkWrap: true,
      childAspectRatio: 0.60,
      crossAxisCount: 2,
      children: List.generate(
        50,
        (index) => const ComicCard(),
      ),
    );
  }
}
