import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoTitle extends StatelessWidget {
  final String videoTitle;

  const VideoTitle({
    required this.videoTitle,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.0.w,
      padding: EdgeInsets.only(left: 8.0.w),
      child: Text(
        videoTitle,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 15.0.sp,
          fontWeight: FontWeight.w700,
        ),
        maxLines: 2,
      )
    );
  }
}
