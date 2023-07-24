import 'package:flutter/material.dart';

class NetworkError extends StatelessWidget {
  const NetworkError({super.key, required this.onPress});

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsetsDirectional.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(
                Icons.error,
                size: 128,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'An network error has been detected, please press refresh button to try again',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPress,
                  child: const Text(
                    'Refresh',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
