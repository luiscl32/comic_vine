import 'package:comic_vine/presentation/screens/comic_list/widgets/comic_list.widgets.dart';
import 'package:flutter/material.dart';

class ComicListView extends StatelessWidget {
  const ComicListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ActionBar(),
        SizedBox(
          height: 12,
        ),
        Expanded(child: VerticalList()),
        //Expanded(child: GridList()),
      ],
    );
  }
}
