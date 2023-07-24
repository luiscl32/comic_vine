import 'package:bloc/bloc.dart';
import 'package:comic_vine/data/repositories/comic_detail/sub_category.repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_state.dart';
part 'sub_category_cubit.freezed.dart';

class SubCategoryCubit extends Cubit<SubCategoryState> {
  SubCategoryCubit() : super(const SubCategoryState.initial(''));

  void getSubCategoryImage({
    required String type,
    required int categoryId,
    required int subCategoryId,
  }) {
    SubCategoryRepository repository = SubCategoryRepository();

    repository
        .getSubCategoryImage(
            type: type, categoryId: categoryId, subCategoryId: subCategoryId)
        .then((imageData) {
      if (imageData == null) {
        emit(const SubCategoryState.initial(''));
      } else {
        emit(SubCategoryState.initial(imageData));
      }
    });
  }
}
