import 'package:bloc/bloc.dart';
import 'package:comic_vine/data/repositories/comic_list/comic_list.repository.dart';
import 'package:comic_vine/domain/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_list_state.dart';
part 'comic_list_cubit.freezed.dart';

class ComicListCubit extends Cubit<ComicListState> {
  ComicListCubit() : super(const ComicListState.initial());

  Future<void> getLatestIssues({required String page}) async {
    ComicListRepository repository = ComicListRepository();
    emit(const ComicListState.loading());
    repository.fetchLastIssues(page: page).then((lastIssuesData) {
      if (lastIssuesData == null) {
        emit(const ComicListState.error());
      } else {
        emit(ComicListState.loaded(lastIssuesData));
      }
    });
  }
}
