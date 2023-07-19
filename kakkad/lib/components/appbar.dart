import 'package:flutter/material.dart';
import 'package:kakkad/components/colors.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const Myappbar({
    required this.title,
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          // Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Mycolors.primarygreytext,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(
          height: 1,
          color: Mycolors.primarygreytext,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Mycolors.primarytext,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
