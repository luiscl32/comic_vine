import 'package:comic_vine/data/config/api.config.dart';
import 'package:comic_vine/domain/models/comic_list/last_issues.model.dart';
import 'package:comic_vine/domain/repositories/comic_list/comic_list.asbtract.repository.dart';
import 'package:dio/dio.dart';

class ComicListRepository extends AbstractComicListRepository {
  @override
  Future<LastIssues?> fetchLastIssues({required String page}) async {
    try {
      final Dio dio = Dio();

      final response = await dio.get(ApiConfig.getRequestUrl('issues', page));

      if (response.data == null) {
        return null;
      } else {
        final LastIssues lastIssuesData = LastIssues.fromJson(response.data);
        return lastIssuesData;
      }
    } catch (e) {
      return null;
    }
  }
}
