import 'package:flutter/material.dart';
import 'package:kakkad/login.dart';

void main() {
  runApp(const Kakkad());
}

class Kakkad extends StatelessWidget {
  const Kakkad({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Loginpage(),
    );
  }
}
