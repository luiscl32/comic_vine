import 'package:comic_vine/domain/models/models.dart';

abstract class AbstractComicListRepository {
  Future<LastIssues?> fetchLastIssues({required String page});
}
