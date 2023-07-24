import 'package:flutter/material.dart';
import 'package:comic_vine/domain/blocs/comic_list/comic_list_cubit.dart';
import 'package:comic_vine/domain/models/comic_list/last_issues.model.dart';
import 'package:comic_vine/presentation/commons/widgets/widgets.dart';

import 'package:comic_vine/presentation/screens/comic_list/widgets/comic_list.widgets.dart';
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
            return const ComicListShimmer();
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

class LoadedView extends StatefulWidget {
  const LoadedView({
    super.key,
    required this.lastIssuesData,
  });

  final LastIssues lastIssuesData;

  @override
  State<LoadedView> createState() => _LoadedViewState();
}

class _LoadedViewState extends State<LoadedView> {
  ScrollController controller = ScrollController();
  int page = 0;
  bool listIsActive = false;

  @override
  void initState() {
    controller.addListener(() {
      if ((controller.position.pixels + 1500) >=
          controller.position.maxScrollExtent) {
        //page++;
        //ComicListHandlers(context).fetchNewData(page.toString());
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionBar(
          onPress: () => setState(
            () {
              listIsActive = !listIsActive;
            },
          ),
          isActive: listIsActive,
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
            child: listIsActive
                ? GridList(
                    controller: controller,
                    comics: widget.lastIssuesData.results!,
                  )
                : VerticalList(
                    comics: widget.lastIssuesData.results!,
                  )),
      ],
    );
  }
}
