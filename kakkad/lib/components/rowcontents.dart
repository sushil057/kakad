import 'package:flutter/material.dart';
import 'package:kakkad/components/colors.dart';

class RowContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final IconData? icon2;
  final VoidCallback onpressed;

  const RowContent({
    required this.icon,
    required this.label,
    required this.onpressed,
    this.icon2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onpressed,
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Mycolors.primaryred,
                ),
                const SizedBox(width: 15),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    color: Mycolors.primaryblack,
                  ),
                ),
                Icon(
                  icon2,
                  color: Mycolors.primarytext,
                  size: 16,
                ),
              ]),
        ),
      ],
    );
  }
}
