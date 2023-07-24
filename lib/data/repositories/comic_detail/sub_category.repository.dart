import 'package:comic_vine/data/config/api.config.dart';
import 'package:comic_vine/domain/models/comic_detail/sub_category.model.dart';
import 'package:comic_vine/domain/repositories/comic_list/sub_category.abstract.repository.dart';
import 'package:dio/dio.dart';

class SubCategoryRepository extends AbstractSubCategoryRepository {
  @override
  Future<String?> getSubCategoryImage({
    required String type,
    required int categoryId,
    required int subCategoryId,
  }) async {
    try {
      final Dio dio = Dio();
      final String request = '$type/$categoryId-$subCategoryId';

      final Response response =
          await dio.get(ApiConfig.getRequestUrl(request, null));
      if (response.data == null) {
        return null;
      } else {
        final String iconUrl =
            Subcategorydata.fromJson(response.data).results!.image!.thumbUrl!;
        return iconUrl;
      }
    } catch (e) {
      return null;
    }
  }
}
