// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_entity.dart';

// **************************************************************************
// SqfliteAdapterGenerator
// **************************************************************************

///
/// Factory method to create Entity from raw sql data
///
ImageEntity _$ImageEntityFromSqlDataMap(Map<String, dynamic> rawData) {
  return ImageEntity(
    id: rawData['id'] as int,
    createdAt: SqfliteCodec.dateTimeDecode(rawData['created_at'] as int),
    uploadedAt: SqfliteCodec.dateTimeDecode(rawData['uploaded_at'] as int?),
    fileSizeBytes: rawData['file_size_bytes'] as int?,
    isFileUploaded: SqfliteCodec.boolDecode(rawData['is_file_uploaded'] as int),
    width: rawData['width'] as int,
    height: rawData['height'] as int,
    isDeleted: SqfliteCodec.boolDecode(rawData['is_deleted'] as int),
  );
}

///
/// Factory method to get raw sql data from class annotated by SqlEntityDefinition
///
Map<String, dynamic> _$ImageEntityToSqlDataMap(ImageEntity instance) {
  final val = <String, dynamic>{};
  val['id'] = instance.id;
  val['created_at'] = SqfliteCodec.dateTimeEncode(instance.createdAt) as int;
  val['uploaded_at'] = SqfliteCodec.dateTimeEncode(instance.uploadedAt);
  val['file_size_bytes'] = instance.fileSizeBytes;
  val['is_file_uploaded'] =
      SqfliteCodec.boolEncode(instance.isFileUploaded) as int;
  val['width'] = instance.width;
  val['height'] = instance.height;
  val['is_deleted'] = SqfliteCodec.boolEncode(instance.isDeleted) as int;
  return val;
}

///
/// Sqflite table columns declarations
///
class ImageEntityColumnsDeclaration {
  const ImageEntityColumnsDeclaration();

  final String id = 'id';
  final String createdAt = 'created_at';
  final String uploadedAt = 'uploaded_at';
  final String fileSizeBytes = 'file_size_bytes';
  final String isFileUploaded = 'is_file_uploaded';
  final String width = 'width';
  final String height = 'height';
  final String isDeleted = 'is_deleted';
}

///
/// Helper class used to create table for class annotated by SqlEntityDefinition
///
class ImageEntitySqlAdapter implements SqlAdapter<ImageEntity> {
  static const ImageEntityColumnsDeclaration columns =
      ImageEntityColumnsDeclaration();

  const ImageEntitySqlAdapter();

  @override
  Type get modelType => ImageEntity;

  @override
  ImageEntity deserialize(Map<String, dynamic> json) =>
      _$ImageEntityFromSqlDataMap(json);

  @override
  Map<String, dynamic> serialize(ImageEntity entity) =>
      _$ImageEntityToSqlDataMap(entity);

  @override
  String get tableName => 'images';

  @override
  String get createEntityTableScript => '''
        
CREATE TABLE images(
		id INTEGER PRIMARY KEY,
		created_at INTEGER NOT NULL ,
		uploaded_at INTEGER,
		file_size_bytes INTEGER,
		is_file_uploaded INTEGER NOT NULL ,
		width INTEGER NOT NULL ,
		height INTEGER NOT NULL ,
		is_deleted INTEGER NOT NULL )
      ''';
}
