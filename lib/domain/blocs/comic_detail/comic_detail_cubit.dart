import 'package:bloc/bloc.dart';
import 'package:comic_vine/data/repositories/comic_detail/comic_detail.repository.dart';
import 'package:comic_vine/domain/models/comic_detail/comic_detail.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_detail_state.dart';
part 'comic_detail_cubit.freezed.dart';

class ComicDetailCubit extends Cubit<ComicDetailState> {
  ComicDetailCubit() : super(const ComicDetailState.initial());

  Future<void> getComicDetail(int idcomic) async {
    emit(const ComicDetailState.loading());

    ComicDetailRepository repository = ComicDetailRepository();

    repository.getComicDetail(idcomic).then((comicdetailData) {
      if (comicdetailData == null) {
        emit(const ComicDetailState.error());
      } else {
        emit(ComicDetailState.loaded(comicdetailData));
      }
    });
  }
}
