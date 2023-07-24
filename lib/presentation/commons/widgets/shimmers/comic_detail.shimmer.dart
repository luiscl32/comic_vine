import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ComicDetailShimmer extends StatelessWidget {
  const ComicDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            color: Colors.grey,
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: 100,
              height: 18,
              color: Colors.grey,
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 18,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
