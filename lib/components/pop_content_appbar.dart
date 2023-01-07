import 'package:flutter/material.dart';

class PopContentAppbar extends StatelessWidget with PreferredSizeWidget{
  final String title;
  const PopContentAppbar ({
    required this.title,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        iconTheme: IconThemeData(
            color: Colors.white

        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFA68CF7),
                  Color(0xFF80A4E6),
                ],
              )
          ),
        ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // ✅
}
