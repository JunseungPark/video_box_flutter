import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget{
  const MainAppBar({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0.w),
          child: Image(
            image: AssetImage('assets/image/appbar_logo.png'),
          ),
        ),
        leadingWidth: 60.0.h,
        backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // ✅
}
