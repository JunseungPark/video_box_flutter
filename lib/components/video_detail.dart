import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoDetail extends StatelessWidget {
  final String videoDetail;
  final String videoSource;

  const VideoDetail({
    required this.videoDetail,
    required this.videoSource,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 350.0.w,
              height: 65.0.h,
              child: Text(
                videoDetail,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10.0.sp,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),
             Text("출처: " + videoSource,
                 style: TextStyle(
                 fontSize: 10.0.sp,
                 fontWeight: FontWeight.w300
               ),
             ),
          ],
        ),
      ),
    );
  }
}
