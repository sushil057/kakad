import 'package:flutter/material.dart';

class Titletext extends StatelessWidget {
  final String title;
  const Titletext({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
