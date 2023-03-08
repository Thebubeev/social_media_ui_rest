import 'package:freezed_annotation/freezed_annotation.dart';
part 'albums_entity.freezed.dart';
part 'albums_entity.g.dart';

@Freezed()
class AlbumsEntity with _$AlbumsEntity {
  const factory AlbumsEntity({
  required int albumId,
  required int id,
  required String title,
  required String url,
  required String thumbnailUrl,
  }) = _AlbumsEntity;

  factory AlbumsEntity.fromJson(Map<String, dynamic> json) =>
      _$AlbumsEntityFromJson(json);
}
