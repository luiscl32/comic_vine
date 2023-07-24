import 'package:comic_vine/domain/blocs/comic_list/comic_list_cubit.dart';
import 'package:comic_vine/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComicListHandlers {
  ComicListHandlers(this.context);

  final BuildContext context;

  void fetchNewData(String page) {
    context.read<ComicListCubit>().getMoreIssues(page: page);
  }

  void navigateToDetail(int idComic) {
    Navigator.pushNamed(context, RoutesPaths.comicDetail,
        arguments: {'idComic': idComic});
  }
}
