import 'package:flutter/material.dart';
import 'package:kakkad/components/colors.dart';

class Textfield extends StatelessWidget {
  final String hinttext;
  final IconData? icon;
  final bool obscuretext;
  final String? title;
  final double? fontsize;
  const Textfield({
    this.title,
    this.fontsize,
    required this.hinttext,
    required this.icon,
    required this.obscuretext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        cursorColor: Mycolors.primaryblack,
        obscureText: obscuretext,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Mycolors.primaryblack,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          labelText: title,
          hintText: hinttext,
          hintStyle: TextStyle(
            fontSize: fontsize,
          ),
          prefixIcon: Icon(
            icon,
            color: Mycolors.primaryred,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade100,
            ),
          ),
        ),
      ),
    );
  }
}
