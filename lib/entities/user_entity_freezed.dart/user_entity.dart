import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_rest/entities/address_entity_freezed/address_entity.dart';
import 'package:test_task_rest/entities/company_entity_freezed/company_entity.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@Freezed()
class UserEntity with _$UserEntity {
  const factory UserEntity(
      {required int id,
      required String name,
      required String username,
      required String email,
      @JsonKey(name: 'address') required AddressEntity address,
      required String phone,
      required String website,
      @JsonKey(name: 'company') required CompanyEntity company}) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
