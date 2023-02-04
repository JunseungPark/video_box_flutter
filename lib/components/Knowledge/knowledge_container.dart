import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:video_box/components/Knowledge/knowledge_list_item.dart';
import 'package:video_box/database/video_database.dart';
import 'package:video_box/model/video_content.dart';
import 'package:video_box/utils/toast_messege.dart';

class KnowledgeContainer extends StatefulWidget {
  const KnowledgeContainer({Key? key}) : super(key: key);

  @override
  State<KnowledgeContainer> createState() => _KnowledgeContainerState();
}

class _KnowledgeContainerState extends State<KnowledgeContainer> {
  // 비디오리슽트
  List<VideoContentData> videoContentList = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<List<VideoContentData>>(
        stream: GetIt.I<LocalDataBase>().watchFavoriteVideoContentList(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          if(snapshot.hasData && snapshot.data!.isEmpty) {
            return Center(
              child: Text('데이터가 없습니다'),
            );
          }

          videoContentList = snapshot.data!.toList();

          return Scrollbar(
            trackVisibility: true,
            thickness: 5.0,
            child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return KnowledgeListItem(
                      number: index,
                      title: snapshot.data![index].videoTitle,
                      videoUrl: snapshot.data![index].videoUrl,
                      setFavoriteVideo: () => setFavoriteVideo(
                        id: snapshot.data![index].id,
                        index: index
                      ),
                    );
                  }
              ),
          );
        }
      ),
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
      ToastMessege.showToastMessege("해제되었습니다!")
    });
  }
}
