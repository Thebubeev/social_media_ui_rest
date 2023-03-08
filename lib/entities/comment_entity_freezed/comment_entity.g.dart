// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentEntity _$$_CommentEntityFromJson(Map<String, dynamic> json) =>
    _$_CommentEntity(
      title: json['title'] as String,
      body: json['body'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$_CommentEntityToJson(_$_CommentEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
    };
