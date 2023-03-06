// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumsEntity _$$_AlbumsEntityFromJson(Map<String, dynamic> json) =>
    _$_AlbumsEntity(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$_AlbumsEntityToJson(_$_AlbumsEntity instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
