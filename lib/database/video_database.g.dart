// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class VideoContentData extends DataClass
    implements Insertable<VideoContentData> {
  final int id;
  final String videoTitle;
  final String videoDetail;
  final String videoUrl;
  final String videoSource;
  final int isChecked;
  VideoContentData(
      {required this.id,
      required this.videoTitle,
      required this.videoDetail,
      required this.videoUrl,
      required this.videoSource,
      required this.isChecked});
  factory VideoContentData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return VideoContentData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      videoTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_title'])!,
      videoDetail: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_detail'])!,
      videoUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_url'])!,
      videoSource: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_source'])!,
      isChecked: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_checked'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['video_title'] = Variable<String>(videoTitle);
    map['video_detail'] = Variable<String>(videoDetail);
    map['video_url'] = Variable<String>(videoUrl);
    map['video_source'] = Variable<String>(videoSource);
    map['is_checked'] = Variable<int>(isChecked);
    return map;
  }

  VideoContentCompanion toCompanion(bool nullToAbsent) {
    return VideoContentCompanion(
      id: Value(id),
      videoTitle: Value(videoTitle),
      videoDetail: Value(videoDetail),
      videoUrl: Value(videoUrl),
      videoSource: Value(videoSource),
      isChecked: Value(isChecked),
    );
  }

  factory VideoContentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VideoContentData(
      id: serializer.fromJson<int>(json['id']),
      videoTitle: serializer.fromJson<String>(json['videoTitle']),
      videoDetail: serializer.fromJson<String>(json['videoDetail']),
      videoUrl: serializer.fromJson<String>(json['videoUrl']),
      videoSource: serializer.fromJson<String>(json['videoSource']),
      isChecked: serializer.fromJson<int>(json['isChecked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'videoTitle': serializer.toJson<String>(videoTitle),
      'videoDetail': serializer.toJson<String>(videoDetail),
      'videoUrl': serializer.toJson<String>(videoUrl),
      'videoSource': serializer.toJson<String>(videoSource),
      'isChecked': serializer.toJson<int>(isChecked),
    };
  }

  VideoContentData copyWith(
          {int? id,
          String? videoTitle,
          String? videoDetail,
          String? videoUrl,
          String? videoSource,
          int? isChecked}) =>
      VideoContentData(
        id: id ?? this.id,
        videoTitle: videoTitle ?? this.videoTitle,
        videoDetail: videoDetail ?? this.videoDetail,
        videoUrl: videoUrl ?? this.videoUrl,
        videoSource: videoSource ?? this.videoSource,
        isChecked: isChecked ?? this.isChecked,
      );
  @override
  String toString() {
    return (StringBuffer('VideoContentData(')
          ..write('id: $id, ')
          ..write('videoTitle: $videoTitle, ')
          ..write('videoDetail: $videoDetail, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('videoSource: $videoSource, ')
          ..write('isChecked: $isChecked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, videoTitle, videoDetail, videoUrl, videoSource, isChecked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VideoContentData &&
          other.id == this.id &&
          other.videoTitle == this.videoTitle &&
          other.videoDetail == this.videoDetail &&
          other.videoUrl == this.videoUrl &&
          other.videoSource == this.videoSource &&
          other.isChecked == this.isChecked);
}

class VideoContentCompanion extends UpdateCompanion<VideoContentData> {
  final Value<int> id;
  final Value<String> videoTitle;
  final Value<String> videoDetail;
  final Value<String> videoUrl;
  final Value<String> videoSource;
  final Value<int> isChecked;
  const VideoContentCompanion({
    this.id = const Value.absent(),
    this.videoTitle = const Value.absent(),
    this.videoDetail = const Value.absent(),
    this.videoUrl = const Value.absent(),
    this.videoSource = const Value.absent(),
    this.isChecked = const Value.absent(),
  });
  VideoContentCompanion.insert({
    this.id = const Value.absent(),
    required String videoTitle,
    required String videoDetail,
    required String videoUrl,
    required String videoSource,
    required int isChecked,
  })  : videoTitle = Value(videoTitle),
        videoDetail = Value(videoDetail),
        videoUrl = Value(videoUrl),
        videoSource = Value(videoSource),
        isChecked = Value(isChecked);
  static Insertable<VideoContentData> custom({
    Expression<int>? id,
    Expression<String>? videoTitle,
    Expression<String>? videoDetail,
    Expression<String>? videoUrl,
    Expression<String>? videoSource,
    Expression<int>? isChecked,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (videoTitle != null) 'video_title': videoTitle,
      if (videoDetail != null) 'video_detail': videoDetail,
      if (videoUrl != null) 'video_url': videoUrl,
      if (videoSource != null) 'video_source': videoSource,
      if (isChecked != null) 'is_checked': isChecked,
    });
  }

  VideoContentCompanion copyWith(
      {Value<int>? id,
      Value<String>? videoTitle,
      Value<String>? videoDetail,
      Value<String>? videoUrl,
      Value<String>? videoSource,
      Value<int>? isChecked}) {
    return VideoContentCompanion(
      id: id ?? this.id,
      videoTitle: videoTitle ?? this.videoTitle,
      videoDetail: videoDetail ?? this.videoDetail,
      videoUrl: videoUrl ?? this.videoUrl,
      videoSource: videoSource ?? this.videoSource,
      isChecked: isChecked ?? this.isChecked,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (videoTitle.present) {
      map['video_title'] = Variable<String>(videoTitle.value);
    }
    if (videoDetail.present) {
      map['video_detail'] = Variable<String>(videoDetail.value);
    }
    if (videoUrl.present) {
      map['video_url'] = Variable<String>(videoUrl.value);
    }
    if (videoSource.present) {
      map['video_source'] = Variable<String>(videoSource.value);
    }
    if (isChecked.present) {
      map['is_checked'] = Variable<int>(isChecked.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VideoContentCompanion(')
          ..write('id: $id, ')
          ..write('videoTitle: $videoTitle, ')
          ..write('videoDetail: $videoDetail, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('videoSource: $videoSource, ')
          ..write('isChecked: $isChecked')
          ..write(')'))
        .toString();
  }
}

class $VideoContentTable extends VideoContent
    with TableInfo<$VideoContentTable, VideoContentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VideoContentTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _videoTitleMeta = const VerificationMeta('videoTitle');
  @override
  late final GeneratedColumn<String?> videoTitle = GeneratedColumn<String?>(
      'video_title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _videoDetailMeta =
      const VerificationMeta('videoDetail');
  @override
  late final GeneratedColumn<String?> videoDetail = GeneratedColumn<String?>(
      'video_detail', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _videoUrlMeta = const VerificationMeta('videoUrl');
  @override
  late final GeneratedColumn<String?> videoUrl = GeneratedColumn<String?>(
      'video_url', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _videoSourceMeta =
      const VerificationMeta('videoSource');
  @override
  late final GeneratedColumn<String?> videoSource = GeneratedColumn<String?>(
      'video_source', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isCheckedMeta = const VerificationMeta('isChecked');
  @override
  late final GeneratedColumn<int?> isChecked = GeneratedColumn<int?>(
      'is_checked', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, videoTitle, videoDetail, videoUrl, videoSource, isChecked];
  @override
  String get aliasedName => _alias ?? 'video_content';
  @override
  String get actualTableName => 'video_content';
  @override
  VerificationContext validateIntegrity(Insertable<VideoContentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('video_title')) {
      context.handle(
          _videoTitleMeta,
          videoTitle.isAcceptableOrUnknown(
              data['video_title']!, _videoTitleMeta));
    } else if (isInserting) {
      context.missing(_videoTitleMeta);
    }
    if (data.containsKey('video_detail')) {
      context.handle(
          _videoDetailMeta,
          videoDetail.isAcceptableOrUnknown(
              data['video_detail']!, _videoDetailMeta));
    } else if (isInserting) {
      context.missing(_videoDetailMeta);
    }
    if (data.containsKey('video_url')) {
      context.handle(_videoUrlMeta,
          videoUrl.isAcceptableOrUnknown(data['video_url']!, _videoUrlMeta));
    } else if (isInserting) {
      context.missing(_videoUrlMeta);
    }
    if (data.containsKey('video_source')) {
      context.handle(
          _videoSourceMeta,
          videoSource.isAcceptableOrUnknown(
              data['video_source']!, _videoSourceMeta));
    } else if (isInserting) {
      context.missing(_videoSourceMeta);
    }
    if (data.containsKey('is_checked')) {
      context.handle(_isCheckedMeta,
          isChecked.isAcceptableOrUnknown(data['is_checked']!, _isCheckedMeta));
    } else if (isInserting) {
      context.missing(_isCheckedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VideoContentData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return VideoContentData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $VideoContentTable createAlias(String alias) {
    return $VideoContentTable(attachedDatabase, alias);
  }
}

abstract class _$LocalDataBase extends GeneratedDatabase {
  _$LocalDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $VideoContentTable videoContent = $VideoContentTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [videoContent];
}
