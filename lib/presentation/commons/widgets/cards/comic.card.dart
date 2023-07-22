import 'package:flutter/material.dart';

class ComicCard extends StatelessWidget {
  const ComicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.40,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Image.network(
              'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781608873968/marvel-comics-9781608873968_lg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'lorem ipsum',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'lorem ipsum ',
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
