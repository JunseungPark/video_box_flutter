import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/database/video_database.dart';

class MainInfoVideoList extends StatelessWidget {
  // 비디오리슽트
  final List<VideoContentData> videoContentList;

  const MainInfoVideoList({
    required this.videoContentList,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videoContentList.length,
        itemBuilder: (BuildContext context, int index) {
          var i = index.toInt().toString();
          return Container(
            width: 120.w,
            padding: EdgeInsets.only(right: 10.0.w),
            child: SizedBox(

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: (videoContentList[index].isChecked == 1) ? Color(0xFF7C96ED) : Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                onPressed: () {},
                child: Text(
                  videoContentList[index].videoTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 9.0.sp,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
