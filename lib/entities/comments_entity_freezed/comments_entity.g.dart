// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentsEntity _$$_CommentsEntityFromJson(Map<String, dynamic> json) =>
    _$_CommentsEntity(
      postId: json['postId'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_CommentsEntityToJson(_$_CommentsEntity instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
