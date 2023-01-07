import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:video_box/components/main_video_list.dart';
import 'package:video_box/database/video_database.dart';


class MainVideoContainer extends StatelessWidget {

  const MainVideoContainer({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFFF5F1F0),
        child: StreamBuilder<List<VideoContentData>>(
          stream: GetIt.I<LocalDataBase>().watchVideoContentList(),
          builder: (context, snapshot) {

            if(!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            if(snapshot.hasData && snapshot.data!.isEmpty) {
              return Center(
                child: Text('데이터가 없습니다'),
              );
            }

            return MainVideoList(
              videoContentList: snapshot.data!,
            );
          }
        ),
      )
    );
  }
}
