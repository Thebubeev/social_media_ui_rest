import 'package:freezed_annotation/freezed_annotation.dart';
part 'company_entity.freezed.dart';
part 'company_entity.g.dart';

@Freezed()
class CompanyEntity with _$CompanyEntity {
  const factory CompanyEntity({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _CompanyEntity;

  factory CompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$CompanyEntityFromJson(json);
}
