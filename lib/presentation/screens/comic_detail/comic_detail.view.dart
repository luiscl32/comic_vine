import 'package:comic_vine/domain/blocs/comic_detail/comic_detail_cubit.dart';
import 'package:comic_vine/presentation/commons/widgets/widgets.dart';
import 'package:comic_vine/presentation/screens/comic_detail/widgets/comic_detail.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../domain/models/comic_detail/comic_detail.model.dart';

class ComicDetailView extends StatelessWidget {
  const ComicDetailView({Key? key, required this.comicId}) : super(key: key);

  final int comicId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComicDetailCubit, ComicDetailState>(
      builder: (context, state) {
        return state.when(
            initial: () => Container(),
            loading: () => const ComicDetailShimmer(),
            loaded: (comicDetailData) => ComicDetailLoadedView(
                  comicDetailData: comicDetailData,
                ),
            error: () => NetworkError(
                  onPress: () {
                    context.read<ComicDetailCubit>().getComicDetail(comicId);
                  },
                ));
      },
    );
  }
}

class ComicDetailLoadedView extends StatelessWidget {
  const ComicDetailLoadedView({
    super.key,
    required this.comicDetailData,
  });

  final ComicDetail comicDetailData;

  @override
  Widget build(BuildContext context) {
    final String imageComic = comicDetailData.results!.image!.originalUrl!;
    final characterList = comicDetailData.results!.characterCredits!;
    final teamList = comicDetailData.results!.teamCredits!;
    final locationList = comicDetailData.results!.locationCredits!;
    final conceptsList = comicDetailData.results!.conceptCredits!;
    final description = Bidi.stripHtmlIfNeeded(
        comicDetailData.results!.description ??
            'This comic no have a description.');

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ComicHeader(
            image: imageComic,
          ),
          const SizedBox(
            height: 24,
          ),
          Description(description: description),
          const SizedBox(
            height: 24,
          ),
          SectionByCategory(
            title: 'Characters',
            type: 'character',
            data: characterList,
            categoryId: 4005,
          ),
          const SizedBox(
            height: 12,
          ),
          SectionByCategory(
            title: 'Teams',
            type: 'team',
            data: teamList,
            categoryId: 4060,
          ),
          const SizedBox(
            height: 12,
          ),
          SectionByCategory(
            title: 'Locations',
            type: 'location',
            data: locationList,
            categoryId: 4020,
          ),
          const SizedBox(
            height: 12,
          ),
          SectionByCategory(
            title: 'Concepts',
            type: 'concept',
            data: conceptsList,
            categoryId: 4015,
          ),
        ],
      ),
    );
  }
}
