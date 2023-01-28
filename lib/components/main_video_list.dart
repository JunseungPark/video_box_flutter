import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_box/components/video_detail.dart';
import 'package:video_box/components/video_player.dart';
import 'package:video_box/components/video_title.dart';
import 'package:video_box/database/video_database.dart';
import 'package:drift/drift.dart' show Value;
import 'package:get_it/get_it.dart';
import 'package:video_box/utils/toast_messege.dart';

class MainVideoList extends StatelessWidget {
  // 비디오리슽트
  final List<VideoContentData> videoContentList;

  const MainVideoList({
    required this.videoContentList,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 3.0.h),
        itemCount: videoContentList.length,
        itemBuilder: (BuildContext context, int index) {
          var i = index.toInt().toString();
          return Card(
            shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 4.0, //그림자 깊이
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 10.0.w),
              height: 355.0.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VideoPlayer(
                    videoUrl: videoContentList[index].videoUrl,
                    isCheked: videoContentList[index].isChecked,
                    numbering: i,
                    setIsLiked: () => setFavoriteVideo(
                        id: videoContentList[index].id,
                        index: index,
                    )
                  ),
                  SizedBox(height: 8.0.h),
                  VideoTitle(
                    videoTitle: videoContentList[index].videoTitle,
                  ),
                  VideoDetail(
                    videoDetail: videoContentList[index].videoDetail,
                    videoSource: videoContentList[index].videoSource,
                  )
                ],
              ),
            ),
          );
        }
    );
  }

  void setFavoriteVideo({
    required int id,
    required int index
  }) async {
    var isChecked = 0;
    (videoContentList[index].isChecked == 0) ? isChecked = 1 : isChecked = 0;

    await GetIt.I<LocalDataBase>().setFavoriteVideo(
        id,
        VideoContentCompanion(
          videoTitle: Value(videoContentList[index].videoTitle),
          videoDetail: Value(videoContentList[index].videoDetail),
          videoUrl: Value(videoContentList[index].videoUrl),
          videoSource: Value(videoContentList[index].videoSource),
          isChecked: Value(isChecked),
        )
    ).then((value) => {
      ToastMessege.showToastMessege((videoContentList[index].isChecked == 0) ? "저장되었습니다!" : "해제되었습니다!")
    });
  }
}
