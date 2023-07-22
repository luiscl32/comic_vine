import 'package:comic_vine/presentation/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: CustomRouter.routes,
        initialRoute: RoutesPaths.comicList,
        color: Colors.white,
      ),
    );
  }
}
