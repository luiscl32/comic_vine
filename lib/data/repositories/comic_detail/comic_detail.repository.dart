import 'package:comic_vine/data/config/api.config.dart';
import 'package:comic_vine/domain/models/comic_detail/comic_detail.model.dart';
import 'package:comic_vine/domain/repositories/comic_detail/comic_detail.abstract.repository.dart';
import 'package:dio/dio.dart';

class ComicDetailRepository extends AbstractComicDetailRepository {
  @override
  Future<ComicDetail?> getComicDetail(int id) async {
    try {
      final Dio dio = Dio();

      final response =
          await dio.get(ApiConfig.getRequestUrl('issue/4000-$id', null));

      if (response.data == null) {
        return null;
      } else {
        final ComicDetail comicDetailData = ComicDetail.fromJson(response.data);
        return comicDetailData;
      }
    } catch (e) {
      return null;
    }
  }
}
