// private 값들을 불러올 수 없다.
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:video_box/model/video_content.dart';
import 'package:video_box/model/video_content_list.dart';

// private 값들까지 불러올 수 없다.
part 'video_database.g.dart';

// Driftdatabase
@DriftDatabase(
  tables: [
    VideoContent,
  ],
)

class LocalDataBase extends _$LocalDataBase{
  LocalDataBase() : super(_openConnection());

  // create
  Future<int> createVideoContentList(VideoContentCompanion data) => into(videoContent).insert(data);
  // select
  Future<List<VideoContentData>> getVideoContentList() => select(videoContent).get();

  // setFavoriteVideo
  Future<int> setFavoriteVideo(int id, VideoContentCompanion data) =>
      (update(videoContent)..where((tbl) => tbl.id.equals(id))).write(data);

  // 토탈 리스트
  Stream<List<VideoContentData>> watchVideoContentList() {

    final query = select(videoContent).watch().map((rows) =>
        rows.toList()
    );
    // Stream<List<VideoContentList>> i = query.watch();
    return query;
  }
  // 좋아요 리스트 조회
  Stream<List<VideoContentData>> watchFavoriteVideoContentList() {
    final query = select(videoContent);

    query.where((item) => item.isChecked.equals(1));
    
    return query.watch().map((rows) => rows.toList());
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(()async{
    // 데이터베이스를 생성할 경로를 받아옴
    final dbFolder = await getApplicationDocumentsDirectory();
    // 파일 생성(db 파일)
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    // 데이터 베이스 반환
    return NativeDatabase(file);
  });
}