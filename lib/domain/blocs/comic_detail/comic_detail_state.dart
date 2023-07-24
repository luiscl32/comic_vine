part of 'comic_detail_cubit.dart';

@freezed
class ComicDetailState with _$ComicDetailState {
  const factory ComicDetailState.initial() = _Initial;
  const factory ComicDetailState.loading() = _Loading;
  const factory ComicDetailState.loaded(ComicDetail comicDetailData) = _Loaded;
  const factory ComicDetailState.error() = _Error;
}
