import 'package:flutter/material.dart';

class ComicDetailHandlers {
  ComicDetailHandlers(this.context);
  final BuildContext context;

  void onGoBack() {
    Navigator.pop(context);
  }
}
