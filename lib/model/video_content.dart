import 'package:drift/drift.dart';

class VideoContent extends Table {
  // 비디오 아이디
  IntColumn get id => integer().autoIncrement()();
  // 비디오 이름
  TextColumn get videoTitle => text()();

  TextColumn get videoDetail => text()();

  TextColumn get videoUrl => text()();

  TextColumn get videoSource => text()();

  IntColumn get isChecked => integer()();

}