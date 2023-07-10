import 'package:flutter/material.dart';
import 'package:kakkad/components/colors.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  const Myappbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Text(
        'LOGIN',
        style: TextStyle(
          color: Mycolors.primarygreytext,
        ),
      ),
      centerTitle: true,
    );
  }
}
