import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakkad/components/colors.dart';

class Codebox extends StatelessWidget {
  const Codebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        cursorColor: Mycolors.primaryblack,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Mycolors.primaryblack,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
