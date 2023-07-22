import 'package:comic_vine/presentation/screens/comic_list/comic_list.view.dart';
import 'package:flutter/material.dart';

class ComicListPage extends StatelessWidget {
  const ComicListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Commic book'),
        centerTitle: true,
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ComicListView(),
      ),
    );
  }
}
