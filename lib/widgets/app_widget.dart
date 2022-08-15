import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({Key? key, this.title}) : super(key: key);
  String? title = "Animation";

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
