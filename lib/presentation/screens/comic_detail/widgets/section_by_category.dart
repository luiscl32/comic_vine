import 'package:comic_vine/domain/blocs/sub_category/sub_category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:comic_vine/presentation/commons/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionByCategory extends StatelessWidget {
  const SectionByCategory(
      {super.key,
      required this.title,
      required this.data,
      required this.categoryId,
      required this.type});

  final String title;
  final List<dynamic> data;
  final int categoryId;
  final String type;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryCubit, SubCategoryState>(
      builder: (context, state) {
        /** Todo
            context.read<SubCategoryCubit>().getSubCategoryImage(
                        type: type,
                        categoryId: categoryId,
                        subCategoryId: data[index].id,
                      ); 
         
         */

        return state.when(
            initial: (image) => SectionCategory(
                  title: title,
                  data: data,
                  categoryId: categoryId,
                  type: type,
                  image: image,
                ));
      },
    );
  }
}

class SectionCategory extends StatelessWidget {
  const SectionCategory({
    super.key,
    required this.title,
    required this.data,
    required this.categoryId,
    required this.type,
    required this.image,
  });

  final String title;
  final List data;
  final int categoryId;
  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        child: Column(
          children: [
            TitleSeparator(titleText: title),
            if (data.isEmpty)
              Center(
                  child: Text(
                'This comic no have a $title',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black45),
              )),
            if (data.isNotEmpty) _SectionList(image: image, data: data)
          ],
        ),
      ),
    );
  }
}

class _SectionList extends StatelessWidget {
  const _SectionList({
    super.key,
    required this.image,
    required this.data,
  });

  final String image;
  final List data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return ThumbnailCard(
            image: image,
            name: data[index].name!,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
        itemCount: data.length);
  }
}
