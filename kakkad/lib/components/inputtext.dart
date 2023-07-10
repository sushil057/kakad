import 'package:flutter/material.dart';
import 'package:kakkad/components/colors.dart';

class Textfield extends StatelessWidget {
  final String hinttext;
  final IconData? icon;
  final bool obscuretext;
  const Textfield({
    required this.hinttext,
    required this.icon,
    required this.obscuretext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscuretext,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(
          fontSize: 18,
        ),
        prefixIcon: Icon(
          icon,
          color: Mycolors.primaryred,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey.shade100)),
      ),
    );
  }
}
