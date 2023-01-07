import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/components/main_info.dart';
import 'package:video_box/components/main_video_container.dart';

class MainMaster extends StatefulWidget {
  const MainMaster({Key? key}) : super(key: key);

  @override
  State<MainMaster> createState() => _MainMasterState();
}

class _MainMasterState extends State<MainMaster> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFFF5F1F0),
        child: Column(
          children: [
            MainInfo(),
            MainVideoContainer()
          ],
        ),
      ),
    );
  }
}
