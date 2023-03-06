import 'package:freezed_annotation/freezed_annotation.dart';
part 'posts_entity.freezed.dart';
part 'posts_entity.g.dart';

@Freezed()
class PostsEntity with _$PostsEntity {
  const factory PostsEntity({
  required int userId,
  required int id,
  required String title,
  required String body,
  }) = _PostsEntity;

  factory PostsEntity.fromJson(Map<String, dynamic> json) =>
      _$PostsEntityFromJson(json);
}
