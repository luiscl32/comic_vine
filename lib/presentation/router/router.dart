import 'package:comic_vine/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

class RoutesPaths {
  RoutesPaths._();

  static String comicList = '/comic_list';
  static String comicDetail = '/comic_detail';
}

class CustomRouter {
  CustomRouter._();

  static Map<String, WidgetBuilder> routes = {
    RoutesPaths.comicList: (context) => const ComicListPage(),
    RoutesPaths.comicDetail: (context) => const ComicDetailPage()
  };
}
