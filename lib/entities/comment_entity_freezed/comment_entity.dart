import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_entity.freezed.dart';
part 'comment_entity.g.dart';

@Freezed()
class CommentEntity with _$CommentEntity {
  const factory CommentEntity({
  required String title,
  required String body,
  required int userId,
  }) = _CommentEntity;

  factory CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentEntityFromJson(json);
}
