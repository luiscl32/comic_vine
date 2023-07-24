import 'package:comic_vine/domain/models/comic_detail/comic_detail.model.dart';

abstract class AbstractComicDetailRepository {
  Future<ComicDetail?> getComicDetail(int id);
}
