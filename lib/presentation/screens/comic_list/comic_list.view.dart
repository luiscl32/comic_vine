import 'package:comic_vine/domain/blocs/cubit/comic_list_cubit.dart';
import 'package:comic_vine/domain/models/comic_list/last_issues.model.dart';
import 'package:comic_vine/presentation/screens/comic_list/widgets/comic_list.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComicListView extends StatelessWidget {
  const ComicListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComicListCubit, ComicListState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Container();
          },
          loading: () {
            return const LoadingView();
          },
          loaded: (lastIssuesData) {
            return LoadedView(
              lastIssuesData: lastIssuesData,
            );
          },
          error: () {
            return const ErrorView();
          },
        );
      },
    );
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Error'));
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('loading ...'),
    );
  }
}

class LoadedView extends StatelessWidget {
  const LoadedView({
    super.key,
    required this.lastIssuesData,
  });

  final LastIssues lastIssuesData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ActionBar(),
        const SizedBox(
          height: 12,
        ),
        //Expanded(
        //    child: VerticalList(
        //  comics: lastIssuesData.results!,
        //)),
        Expanded(
            child: GridList(
          comics: lastIssuesData.results!,
        )),
      ],
    );
  }
}
