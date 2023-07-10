import 'package:flutter/material.dart';
import 'package:kakkad/components/colors.dart';

class Custombutton extends StatelessWidget {
  final void Function() onpressed;
  final String label;

  const Custombutton({
    required this.onpressed,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Mycolors.primaryred,
        ),
        onPressed: onpressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
