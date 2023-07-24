import 'package:comic_vine/domain/blocs/comic_detail/comic_detail_cubit.dart';
import 'package:comic_vine/domain/blocs/sub_category/sub_category_cubit.dart';
import 'package:comic_vine/presentation/screens/comic_detail/comic_detail.view.dart';
import 'package:comic_vine/presentation/screens/comic_detail/handlers/comic_detail.handlers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComicDetailPage extends StatelessWidget {
  const ComicDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routesData =
        ModalRoute.of(context)?.settings.arguments as Map<String, int>;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ComicDetailCubit()..getComicDetail(routesData['idComic']!),
        ),
        BlocProvider(
          create: (context) => SubCategoryCubit(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {
              ComicDetailHandlers(context).onGoBack();
            },
          ),
          title: const Text(
            'Comic book',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: const ComicDetailView(),
      ),
    );
  }
}
