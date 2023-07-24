part of 'comic_list_cubit.dart';

@freezed
class ComicListState with _$ComicListState {
  const factory ComicListState.initial() = _Initial;
  const factory ComicListState.loading() = _Loading;
  const factory ComicListState.loaded(LastIssues lastIssuesData) = _Loaded;
  const factory ComicListState.error() = _Error;
}
