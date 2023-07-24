import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ComicListShimmer extends StatelessWidget {
  const ComicListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (_, __) => SizedBox(
          height: 220,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 220,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: 180,
                      height: 18,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 70,
                      height: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: 12,
        ),
      ),
    );
  }
}
