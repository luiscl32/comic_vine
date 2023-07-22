import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Latest issues',
            style: TextStyle(fontSize: 16),
          ),
          Expanded(child: Container()),
          SizedBox(
            width: 48,
            height: 48,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.list),
              iconSize: 32,
            ),
          )
        ],
      ),
    );
  }
}
