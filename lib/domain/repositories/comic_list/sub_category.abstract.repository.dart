import 'package:comic_vine/domain/models/comic_detail/sub_category.model.dart';

abstract class AbstractSubCategoryRepository {
  Future<String?> getSubCategoryImage(
      {required String type,
      required int categoryId,
      required int subCategoryId});
}
