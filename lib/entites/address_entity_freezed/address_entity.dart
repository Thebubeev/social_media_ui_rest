import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_rest/entites/geo_entity_freezed/geo_entity.dart';
part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

@Freezed()
class AddressEntity with _$AddressEntity {
  const AddressEntity._();

  @JsonSerializable(explicitToJson: true)
  const factory AddressEntity({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    @JsonKey(name: 'geo') required GeoEntity geo,
  }) = _AddressEntity;

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);
}
