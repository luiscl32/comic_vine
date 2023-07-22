import 'package:flutter/material.dart';

class ComicCardHorizontal extends StatelessWidget {
  const ComicCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: Image.network(
              'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781608873968/marvel-comics-9781608873968_lg.jpg',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'lorem ipsum',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'lorem ipsum dos',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
