import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_entity.freezed.dart';
part 'comments_entity.g.dart';

@Freezed()
class CommentsEntity with _$CommentsEntity {
  const factory CommentsEntity({
  
  required int postId,
  required int id,
  required String name,
  required String email,
  required String body,
  }) = _CommentsEntity;

  factory CommentsEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentsEntityFromJson(json);
}
