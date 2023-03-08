import 'package:freezed_annotation/freezed_annotation.dart';
part 'geo_entity.freezed.dart';
part 'geo_entity.g.dart';

@Freezed()
class GeoEntity with _$GeoEntity {
  const factory GeoEntity({
    required String lat,
    required String lng,
  }) = _GeoEntity;

  factory GeoEntity.fromJson(Map<String, dynamic> json) =>
      _$GeoEntityFromJson(json);
}
