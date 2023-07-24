import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    super.key,
    required this.onPress,
    required this.isActive,
  });

  final VoidCallback onPress;
  final bool isActive;

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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          SizedBox(
            width: 48,
            height: 48,
            child: IconButton(
              onPressed: onPress,
              icon: Icon(
                isActive ? Icons.grid_view_sharp : Icons.list_alt_outlined,
              ),
              iconSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
