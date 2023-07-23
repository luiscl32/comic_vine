import 'package:comic_vine/domain/blocs/cubit/comic_list_cubit.dart';
import 'package:comic_vine/presentation/screens/comic_list/comic_list.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: BlocProvider(
          create: (_) => ComicListCubit()..getLatestIssues(),
          child: const ComicListView(),
        ),
      ),
    );
  }
}
